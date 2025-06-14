﻿namespace SharmalRealEstateSystem.Models.Features.Admin.Car;

public class UpdateCarRequestModel
{
    public string Title { get; set; } = null!;
    public string? Code { get; set; } = null!;
    public string? Status { get; set; } = null!;

    public string Description { get; set; } = null!;

    public string Gearbox { get; set; } = null!;

    public string SteeringPosition { get; set; } = null!;

    public string EnginePower { get; set; } = null!;

    public string? FuelType { get; set; }

    public string? Mileage { get; set; }

    public string Manufacturer { get; set; } = null!;

    public string? BuildType { get; set; }

    public string Model { get; set; } = null!;

    public string Year { get; set; } = null!;

    public string? PlateDivision { get; set; }

    public string? PlateNo { get; set; }

    public string? PlateColor { get; set; }

    public string? LincenseStatus { get; set; }

    public string? CarColor { get; set; }

    public string Condition { get; set; } = null!;

    public decimal Price { get; set; }

    public string? SpecialStatus { get; set; }

    public string? NumberOfViewers { get; set; }

    public string? Availability { get; set; }

    public bool? IsSold { get; set; }

    public string Location { get; set; } = null!;

    public string City { get; set; } = null!;

    public string? PaymentOption { get; set; }

    public string? TrimName { get; set; }

    public string SellerName { get; set; } = null!;

    public string PrimaryPhoneNumber { get; set; } = null!;

    public string? SecondaryPhoneNumber { get; set; }

    public string? Email { get; set; }

    public string? Address { get; set; }
    public string? CreatedBy { get; set; }

    public string? UpdatedBy { get; set; }

    public bool IsDeleted { get; set; }

    public bool? IsPopular { get; set; }

    public bool? IsHotDeal { get; set; }

    public List<IFormFile>? Files { get; set; }

    public List<RemoveCarImageRequestModel>? RemoveImages { get; set; }
}

public class RemoveCarImageRequestModel
{
    public string ImageId { get; set; }
}
