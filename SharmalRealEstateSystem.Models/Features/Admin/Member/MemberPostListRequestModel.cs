
namespace SharmalRealEstateSystem.Models.Features.Admin.Member
{
    public class MemberPostListRequestModel
    {
        public int PageNo { get; set; }
        public int PageSize { get; set; }
        public string Category { get; set; } = null!;
        public string? Status { get; set; } //0=pending,1=approved,2=rejected
    }
}
