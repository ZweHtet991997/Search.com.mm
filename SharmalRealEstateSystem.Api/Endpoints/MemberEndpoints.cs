namespace SharmalRealEstateSystem.Api.Endpoints
{
    public class MemberEndpoints
    {
        public static List<string> GetMemberEndpoints()
        {
            return new List<string>
            {
                "/api/v1/feature-property",
                "/api/v1/feature-car",
                "/api/v2/member/otp",
            };
        }
    }
}
