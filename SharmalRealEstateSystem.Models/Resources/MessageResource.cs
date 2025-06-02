﻿namespace SharmalRealEstateSystem.Models.Resources;

public class MessageResource
{
    public static string Success { get; } = "Success.";
    public static string SaveSuccess { get; } = "Saving Successful.";
    public static string SaveFail { get; } = "Saving Fail.";
    public static string UpdateSuccess { get; } = "Updating Successful.";
    public static string OTPSendSuccess { get; set; } = "OTP Send Successfully.Please check your inbox";
    public static string OTPSendFailed { get; set; } = "Failed to send.Please try again";
    public static string UpdateFail { get; } = "Updating Fail.";
    public static string DeleteSuccess { get; } = "Deleting Successful.";
    public static string DeleteFail { get; } = "Deleting Fail.";
    public static string NotFound { get; } = "No Data Found.";
    public static string Duplicate { get; } = "Duplicate Data.";
    public static string EmailDuplicate { get; } = "Duplicate Email.";
    public static string InvalidId { get; } = "Id is invalid.";
    public static string LoginFail { get; } = "Login Fail.";
    public static string InvalidEncryptionKey { get; } = "You are not allowed.";
    public static string Unauthorized { get; } = "Unauthorized.";
    public static string InvalidPageNo { get; } = "Page No is invalid.";
    public static string InvalidPageSize { get; } = "Page Size is invalid.";
    public static string CreateDirectoryFail { get; } = "Creating Directory Fail.";

    #region PasswordPolicyRules

    public static string MinLengthRequired()
    {
        return "Password must be at least 6 characters long.";
    }

    public static string MaxLengthExceeded()
    {
        return "Password too long.Your password must be at most 15 characters long.";
    }

    public static string UpperCaseRequired()
    {
        return "Password must include at least one uppercase letter.";
    }

    public static string DigitRequired()
    {
        return "Password must include at least one digit.";
    }

    public static string SpecialCharRequired()
    {
        return "Password must include at least one special character.";
    }

    #endregion
}
