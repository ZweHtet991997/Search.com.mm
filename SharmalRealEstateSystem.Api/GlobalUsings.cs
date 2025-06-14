// Global using directives

global using System.Security.Claims;
global using System.Security.Cryptography;
global using System.Text;
global using DotNet7.SharmalRealEstateSample.Shared;
global using DotNet7.SharmalRealEstateSample.Shared.Services;
global using FluentValidation.Results;
global using Microsoft.AspNetCore.Authentication.JwtBearer;
global using Microsoft.AspNetCore.Mvc;
global using Microsoft.EntityFrameworkCore;
global using Microsoft.IdentityModel.Tokens;
global using Microsoft.OpenApi.Models;
global using SharmalRealEstateSystem.Api;
global using SharmalRealEstateSystem.Api.Endpoints;
global using SharmalRealEstateSystem.Api.Features.Admin.Ads;
global using SharmalRealEstateSystem.Api.Features.Admin.AdsPage;
global using SharmalRealEstateSystem.Api.Features.Admin.Car;
global using SharmalRealEstateSystem.Api.Features.Admin.ExchangeRate;
global using SharmalRealEstateSystem.Api.Features.Admin.Feature;
global using SharmalRealEstateSystem.Api.Features.Admin.Inquiry;
global using SharmalRealEstateSystem.Api.Features.Admin.Middlewares;
global using SharmalRealEstateSystem.Api.Features.Admin.Property;
global using SharmalRealEstateSystem.Api.Features.Middlewares;
global using SharmalRealEstateSystem.Api.Features.User.Endpoints;
global using SharmalRealEstateSystem.DbService.AppDbContexts;
global using SharmalRealEstateSystem.Models.Enums;
global using SharmalRealEstateSystem.Models.Enums.Ads;
global using SharmalRealEstateSystem.Models.Enums.Property;
global using SharmalRealEstateSystem.Models.Features;
global using SharmalRealEstateSystem.Models.Features.Admin.Ads;
global using SharmalRealEstateSystem.Models.Features.Admin.AdsPage;
global using SharmalRealEstateSystem.Models.Features.Admin.Auth;
global using SharmalRealEstateSystem.Models.Features.Admin.Car;
global using SharmalRealEstateSystem.Models.Features.Admin.ExchangeRate;
global using SharmalRealEstateSystem.Models.Features.Admin.Feature;
global using SharmalRealEstateSystem.Models.Features.Admin.Inquiry;
global using SharmalRealEstateSystem.Models.Features.Admin.Property;
global using SharmalRealEstateSystem.Models.Features.Jwt;
global using SharmalRealEstateSystem.Models.Resources;
global using SharmalRealEstateSystem.Repositories.Features.Admin;
global using SharmalRealEstateSystem.Repositories.Features.Admin.Ads;
global using SharmalRealEstateSystem.Repositories.Features.Admin.AdsPage;
global using SharmalRealEstateSystem.Repositories.Features.Admin.Car;
global using SharmalRealEstateSystem.Repositories.Features.Admin.ExchangeRate;
global using SharmalRealEstateSystem.Repositories.Features.Admin.Feature;
global using SharmalRealEstateSystem.Repositories.Features.Admin.Inquiry;
global using SharmalRealEstateSystem.Repositories.Features.Admin.Property;
global using SharmalRealEstateSystem.Shared.Services.AuthServices;
global using SharmalRealEstateSystem.Shared.Services.FtpServices;
global using SharmalRealEstateSystem.Shared.Services.SecurityServices;
global using SharmalRealEstateSystem.Shared.Services.ValidationServices.Admin.Ads;
global using SharmalRealEstateSystem.Shared.Services.ValidationServices.Admin.AdsPage;
global using SharmalRealEstateSystem.Shared.Services.ValidationServices.Admin.Auth;
global using SharmalRealEstateSystem.Shared.Services.ValidationServices.Admin.Car;
global using SharmalRealEstateSystem.Shared.Services.ValidationServices.Admin.ExchangeRate;
global using SharmalRealEstateSystem.Shared.Services.ValidationServices.Admin.Feature;
global using SharmalRealEstateSystem.Shared.Services.ValidationServices.Admin.Inquiry;
global using SharmalRealEstateSystem.Shared.Services.ValidationServices.Admin.Property;
global using SharmalRealEstateSystem.Shared.Services.ValidationServices.PasswordPolicy;
global using SharmalRealEstateSystem.Repositories.Features.Admin.Dashboard;
global using RestSharp;
global using SharmalRealEstateSystem.Models.Features.CommonService;
global using SharmalRealEstateSystem.Shared.Configs;
global using SharmalRealEstateSystem.Models.Features.Admin.Member;
global using System.Data;
