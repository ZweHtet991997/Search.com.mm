namespace SharmalRealEstateSystem.Api.Features.Members.MemberPost
{
    public class BL_MemberPost
    {
        private readonly IAdminUnitOfWork _adminUnitOfWork;

        public BL_MemberPost(IAdminUnitOfWork adminUnitOfWork)
        {
            _adminUnitOfWork = adminUnitOfWork;
        }

        #region ApprovedRejected

        public async Task<Result<PropertyResponseModel>> ApprovedRejected(string category,
            string id, int decision)
        {
            Result<PropertyResponseModel> responseModel;
            try
            {
                if (id is null || decision > 2)
                {
                    responseModel = Result<PropertyResponseModel>.FailureResult(MessageResource.UpdateFail,
                        EnumStatusCode.BadRequest);
                    return responseModel;
                }
                var dataResult = await _adminUnitOfWork.PropertyRepository.PostApprovedRejected(category,
                    id, decision);
                return dataResult;

            }
            catch (Exception ex)
            {
                responseModel = Result<PropertyResponseModel>.FailureResult(ex);
                return responseModel;
            }
        }
        #endregion

        #region PropertyGetList

        public async Task<Result<PropertyListResponseModel>> GetPropertyList(
        MemberPostListRequestModel requestModel
    )
        {
            GetPropertyListRequestModel propertyListRequestModel = new GetPropertyListRequestModel();
            Result<PropertyListResponseModel> responseModel;
            List<PropertyDataModel> lst = new List<PropertyDataModel>();
            try
            {
                if (requestModel.PageNo <= 0)
                {
                    responseModel = GetInvalidPropertyPageNoResult();
                    goto result;
                }

                if (requestModel.PageSize <= 0)
                {
                    responseModel = GetInvalidPropertyPageSizeResult();
                    goto result;
                }
                propertyListRequestModel.PageSize = requestModel.PageSize;
                propertyListRequestModel.PageNo = requestModel.PageNo;
                responseModel = await _adminUnitOfWork.PropertyRepository.GetList(propertyListRequestModel);

                if (!string.IsNullOrEmpty(requestModel.Status))
                {
                    lst = responseModel.Data.DataLst.Where(x => x.Property.Approved == Convert.ToInt32(requestModel.Status))
                    .ToList();
                }
                else
                {
                    lst = responseModel.Data.DataLst; // all status return
                }

                var model = new PropertyListResponseModel(lst, responseModel.Data.PageSetting);
                responseModel = Result<PropertyListResponseModel>.SuccessResult(model);
            }
            catch (Exception ex)
            {
                responseModel = Result<PropertyListResponseModel>.FailureResult(ex);
            }

        result:
            return responseModel;
        }

        #endregion

        #region CarGetList

        public async Task<Result<CarListResponseModel>> GetCarList(
        MemberPostListRequestModel requestModel
    )
        {
            GetCarListRequestModel carListRequestModel = new GetCarListRequestModel();
            Result<CarListResponseModel> responseModel;
            List<CarDataModel> lst = new List<CarDataModel>();
            try
            {
                if (requestModel.PageNo <= 0)
                {
                    responseModel = GetInvalidCarPageNoResult();
                    goto result;
                }

                if (requestModel.PageSize <= 0)
                {
                    responseModel = GetInvalidCarPageSizeResult();
                    goto result;
                }
                carListRequestModel.PageSize = requestModel.PageSize;
                carListRequestModel.PageNo = requestModel.PageNo;
                responseModel = await _adminUnitOfWork.CarRepository.GetCarList(carListRequestModel);

                if (!string.IsNullOrEmpty(requestModel.Status))
                {
                    lst = responseModel.Data.DataLst.Where(x => x.Car.Approved == Convert.ToInt32(requestModel.Status))
                    .ToList();
                }
                else
                {
                    lst = responseModel.Data.DataLst;// all status return
                }

                var model = new CarListResponseModel(lst, responseModel.Data.PageSetting);
                responseModel = Result<CarListResponseModel>.SuccessResult(model);
            }
            catch (Exception ex)
            {
                responseModel = Result<CarListResponseModel>.FailureResult(ex);
            }

        result:
            return responseModel;
        }

        #endregion

        private Result<PropertyListResponseModel> GetInvalidPropertyPageNoResult() =>
        Result<PropertyListResponseModel>.FailureResult(MessageResource.InvalidPageNo);

        private Result<PropertyListResponseModel> GetInvalidPropertyPageSizeResult() =>
            Result<PropertyListResponseModel>.FailureResult(MessageResource.InvalidPageSize);

        private Result<CarListResponseModel> GetInvalidCarPageNoResult() =>
        Result<CarListResponseModel>.FailureResult(MessageResource.InvalidPageNo);

        private Result<CarListResponseModel> GetInvalidCarPageSizeResult() =>
            Result<CarListResponseModel>.FailureResult(MessageResource.InvalidPageSize);
    }
}
