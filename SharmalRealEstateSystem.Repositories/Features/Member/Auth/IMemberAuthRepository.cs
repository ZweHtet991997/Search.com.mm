
namespace SharmalRealEstateSystem.Repositories.Features.Member.Auth
{
    public interface IMemberAuthRepository
    {
        Task<Result<AuthResponseModel>> MemberRegister(RegisterRequestModel requestModel);
        Task<Result<AuthResponseModel>> CheckEmailExist(string email);
    }
}