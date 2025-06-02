using SharmalRealEstateSystem.Api.ExternalApiServices;
using SharmalRealEstateSystem.Shared.Services.SecurityServices;

namespace SharmalRealEstateSystem.Api.Features.Members.Auth
{
    public class BL_MemberAuth
    {
        private readonly IAdminUnitOfWork _adminUnitOfWork;
        private readonly ICommonApiService _commonApiService;
        private readonly JWTAuth _jWTAuth;
        private readonly AesService _aesService;
        private readonly TokenValidationService _tokenValidationService;

        public BL_MemberAuth(IAdminUnitOfWork adminUnitOfWork,
            ICommonApiService commonApiService,
            AesService aesService,
            JWTAuth jWTAuth,
            TokenValidationService tokenValidationService)
        {
            _adminUnitOfWork = adminUnitOfWork;
            _commonApiService = commonApiService;
            _aesService = aesService;
            _jWTAuth = jWTAuth;
            _tokenValidationService = tokenValidationService;
        }

        #region Register
        public async Task<Result<AuthResponseModel>> Register(RegisterRequestModel requestModel)
        {
            Result<AuthResponseModel> responseModel;
            try
            {
                #region Enum Validation

                if (!Enum.IsDefined(typeof(EnumUserRole), requestModel.UserRole))
                {
                    responseModel = GetInvalidUserRoleResult();
                    goto result;
                }
                #endregion

                #region Password Policy

                var passwordPolicy = PasswordPolicyChecker.ValidatePassword(
                    _aesService.DecryptString(requestModel.Password)
                );
                if (!string.IsNullOrEmpty(passwordPolicy))
                {
                    responseModel = Result<AuthResponseModel>.FailureResult(
                        passwordPolicy,
                        EnumStatusCode.BadRequest
                    );
                    goto result;
                }

                #endregion

                #region Register
                responseModel = await _adminUnitOfWork.MemberAuthRepository.MemberRegister(requestModel);
                #endregion

                #region SendOTP
                if (responseModel.IsSuccess)
                {
                    var otpSendResult = await RequestOTPAndSendMail(requestModel.Email, requestModel.RequestTypeFor);
                    if (otpSendResult.RespCode == EnumStatusCode.Success)
                    {
                        goto result;
                    }
                    else
                    {
                        responseModel = Result<AuthResponseModel>.FailureResult(
                            MessageResource.OTPSendFailed,
                            EnumStatusCode.BadRequest);
                    }
                }
                #endregion
            }
            catch (Exception ex)
            {
                responseModel = Result<AuthResponseModel>.FailureResult(ex);
            }

        result:
            return responseModel;
        }
        #endregion

        public async Task<BaseResponseModel> RequestOTPAndSendMail(string email, string requestTypeFor)
        {
            BaseResponseModel responseModel = new BaseResponseModel();
            MailRequestModel requestModel = new MailRequestModel();
            requestModel.Subject = requestTypeFor == "ForgetPassword" ? "Forget Password" : "Account Vertification";
            requestModel.ProjectName = "Sharmal Real Estate";
            requestModel.MailType = requestTypeFor == "ForgetPassword" ? "ForgetPassword" : "Activate";

            responseModel = await _commonApiService.RequestOTPAndSendMail(requestModel);
            return responseModel;
        }

        private Result<AuthResponseModel> GetInvalidUserRoleResult() =>
        Result<AuthResponseModel>.FailureResult("User Role is invalid.");
    }
}
