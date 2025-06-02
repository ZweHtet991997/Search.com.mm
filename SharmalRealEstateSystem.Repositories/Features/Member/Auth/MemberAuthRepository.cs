using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SharmalRealEstateSystem.Repositories.Features.Member.Auth
{
    public class MemberAuthRepository : IMemberAuthRepository
    {
        private readonly AppDbContext _context;
        private readonly AesService _aesService;

        public MemberAuthRepository(AppDbContext context, AesService aesService)
        {
            _context = context;
            _aesService = aesService;
        }

        public async Task<Result<AuthResponseModel>> MemberRegister(RegisterRequestModel requestModel)
        {
            Result<AuthResponseModel> responseModel;
            try
            {
                #region Check Email Duplicate

                var user = await GetUserByEmail(requestModel.Email);
                if (user is not null)
                {
                    responseModel = Result<AuthResponseModel>.FailureResult(
                        MessageResource.EmailDuplicate,
                        EnumStatusCode.Conflict
                    );
                    goto result;
                }

                #endregion
                await _context.TblUsers.AddAsync(requestModel.Map());
                int result = await _context.SaveChangesAsync();

                responseModel = Result<AuthResponseModel>.ExecuteResult(result);
            }
            catch (Exception ex)
            {
                responseModel = Result<AuthResponseModel>.FailureResult(ex);
            }

        result:
            return responseModel;
        }

        public async Task<Result<AuthResponseModel>> CheckEmailExist(string email)
        {
            Result<AuthResponseModel> responseModel = new Result<AuthResponseModel>();
            var userByEmail = await GetUserByEmail(email);
            if (userByEmail?.Email is not null)
            {
                responseModel = Result<AuthResponseModel>.SuccessResult();
                goto Result;
            }
            responseModel = Result<AuthResponseModel>.FailureResult("Email does not exist");

        Result:
            return responseModel;
        }
        private async Task<TblMember?> GetUserByEmail(string email)
        {
            return await _context.TblMember.FirstOrDefaultAsync(x => x.Email == email && !x.IsDeleted);
        }
    }
}
