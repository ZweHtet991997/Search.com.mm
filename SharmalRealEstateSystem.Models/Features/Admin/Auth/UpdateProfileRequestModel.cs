﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SharmalRealEstateSystem.Models.Features.Admin.Auth
{
    public class UpdateProfileRequestModel
    {
        public string UserName { get; set; } = null!;

        public string Email { get; set; } = null!;

        public string? UserRole { get; set; } = null!;
    }
}
