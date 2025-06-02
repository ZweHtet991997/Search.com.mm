namespace SharmalRealEstateSystem.Api.Features.Members.MemberPost
{
    [Route("api/v2/member-post/")]
    [ApiController]
    public class MemberPostController : BaseController
    {
        private readonly BL_MemberPost _bL_Member;

        public MemberPostController(BL_MemberPost bL_Member)
        {
            _bL_Member = bL_Member;
        }

        #region ApprovedRejected

        [HttpPatch("approved-rejected")]
        public async Task<IActionResult> ApprovedRejected([FromHeader] string id,
            [FromHeader] string category,
            [FromHeader] int decision)
        {
            var result = await _bL_Member.ApprovedRejected(category, id, decision);
            return Content(result);
        }
        #endregion

        #region GetList

        [HttpPost("getlist")]
        public async Task<IActionResult> GetList([FromBody] MemberPostListRequestModel requestModel)
        {
            if (requestModel.Category == "property")
            {
                var result = await _bL_Member.GetPropertyList(requestModel);
                return Content(result);
            }
            else
            {
                var result = await _bL_Member.GetCarList(requestModel);
                return Content(result);
            }
        }

        #endregion
    }
}
