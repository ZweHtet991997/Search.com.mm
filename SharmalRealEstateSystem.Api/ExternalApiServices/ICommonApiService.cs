
namespace SharmalRealEstateSystem.Api.ExternalApiServices
{
    public interface ICommonApiService
    {
        Task<BaseResponseModel> RequestOTPAndSendMail(MailRequestModel requestModel);
    }
}