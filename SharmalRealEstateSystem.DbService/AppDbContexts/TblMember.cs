using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SharmalRealEstateSystem.DbService.AppDbContexts
{
    public class TblMember
    {
        public string MemberId { get; set; } = null!;
        public string FullName { get; set; } = null!;
        public string Email { get; set; } = null!;
        public string Password { get; set; } = null!;
        public string SubscriptionPlan { get; set; } = null!;
        public string? SubscriptionStartDate { get; set; }
        public string? SubscriptionEndDate { get; set; }
        public string? SubscriptionStatus { get; set; }

        public int? ListingLimit { get; set; }
        public string? CreatedDate { get; set; }
        public string? UpdatedDate { get; set; }

        public bool IsDeleted { get; set; }
    }
}
