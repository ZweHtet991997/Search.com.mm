


namespace SharmalRealEstateSystem.Api.ExternalApiServices
{
    public class CommonApiService : ICommonApiService
    {
        private RestClient _restClient;

        public CommonApiService()
        {
            _restClient = new RestClient(ApiUrlConfig.CommonServiceUrl);
        }

        public async Task<BaseResponseModel> RequestOTPAndSendMail(MailRequestModel requestModel)
        {
            BaseResponseModel responseModel = new BaseResponseModel();
            try
            {
                var request = new RestRequest("/service/email", Method.Post);
                request.AddJsonBody(requestModel);

                var response = await _restClient.ExecuteAsync(request);

                if (response.IsSuccessStatusCode)
                {
                    responseModel.RespCode = EnumStatusCode.Success;
                    responseModel.RespMessage = MessageResource.OTPSendSuccess;
                    goto Restult;
                }
                responseModel.RespCode = EnumStatusCode.BadRequest;
                responseModel.RespMessage = MessageResource.OTPSendFailed;


            Restult:
                return responseModel;
            }
            catch (Exception ex)
            {
                responseModel.RespCode = EnumStatusCode.InternalServerError;
                responseModel.RespMessage = ex.ToString();
                return responseModel;
            }
        }
    }
}
