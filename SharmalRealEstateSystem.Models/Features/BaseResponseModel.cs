using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SharmalRealEstateSystem.Models.Features
{
    public class BaseResponseModel
    {
        public EnumStatusCode RespCode { get; set; }
        public string RespMessage { get; set; } = null!;
    }
}
