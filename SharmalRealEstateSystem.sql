USE [db_a9a6b3_sharmal]
GO
/****** Object:  Table [dbo].[Tbl_Ads]    Script Date: 10/13/2024 9:48:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Ads](
	[AdsId] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[TargetUrl] [nvarchar](50) NOT NULL,
	[AdsLayout] [nvarchar](50) NULL,
	[StartDate] [nvarchar](50) NOT NULL,
	[EndDate] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](250) NOT NULL,
	[UpdatedBy] [nvarchar](250) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Tbl_Ads] PRIMARY KEY CLUSTERED 
(
	[AdsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_AdsPage]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_AdsPage](
	[AdsPageId] [nvarchar](50) NOT NULL,
	[Pages] [nvarchar](50) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Tbl_AdsPage] PRIMARY KEY CLUSTERED 
(
	[AdsPageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_AdsPagePlacement]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_AdsPagePlacement](
	[AdsPagePlacementId] [nvarchar](50) NOT NULL,
	[AdsId] [nvarchar](50) NULL,
	[AdsPageId] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_AdsPagePlacement] PRIMARY KEY CLUSTERED 
(
	[AdsPagePlacementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Car]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Car](
	[CarId] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Gearbox] [nvarchar](50) NOT NULL,
	[SteeringPosition] [nvarchar](50) NOT NULL,
	[EnginePower] [nvarchar](50) NOT NULL,
	[FuelType] [nvarchar](50) NULL,
	[Mileage] [nvarchar](50) NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[BuildType] [nvarchar](50) NULL,
	[Model] [nvarchar](50) NOT NULL,
	[Year] [nvarchar](50) NOT NULL,
	[PlateDivision] [nvarchar](50) NULL,
	[PlateNo] [nvarchar](50) NULL,
	[PlateColor] [nvarchar](50) NULL,
	[LincenseStatus] [nvarchar](50) NULL,
	[CarColor] [nvarchar](50) NOT NULL,
	[Condition] [nvarchar](50) NOT NULL,
	[Price] [nvarchar](50) NOT NULL,
	[SpecialStatus] [nvarchar](50) NULL,
	[NumberOfViewers] [nvarchar](50) NULL,
	[Availability] [nvarchar](50) NULL,
	[IsSold] [bit] NULL,
	[Location] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[PaymentOption] [nvarchar](50) NULL,
	[TrimName] [nvarchar](50) NULL,
	[SellerName] [nvarchar](50) NOT NULL,
	[PrimaryPhoneNumber] [nvarchar](50) NOT NULL,
	[SecondaryPhoneNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](250) NOT NULL,
	[CreatedDate] [nvarchar](50) NOT NULL,
	[UpdatedBy] [nvarchar](250) NULL,
	[UpdatedDate] [nvarchar](50) NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsPopular] [bit] NULL,
	[IsHotDeal] [bit] NULL,
	[Approved] [int] NULL,
 CONSTRAINT [PK_Tbl_Car] PRIMARY KEY CLUSTERED 
(
	[CarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_ExchangeRate]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_ExchangeRate](
	[ExchangeRateId] [int] IDENTITY(1,1) NOT NULL,
	[Currency] [nvarchar](10) NULL,
	[ExchangeRate] [decimal](18, 2) NULL,
	[UpdatedDate] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_ExchangeRate] PRIMARY KEY CLUSTERED 
(
	[ExchangeRateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Feature]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Feature](
	[FeatureId] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Tbl_Feature] PRIMARY KEY CLUSTERED 
(
	[FeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Image]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Image](
	[ImageId] [nvarchar](50) NOT NULL,
	[PropertyId] [nvarchar](50) NULL,
	[CarId] [nvarchar](50) NULL,
	[AdsId] [nvarchar](50) NULL,
	[ImageName] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Tbl_Image] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Inquires]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Inquires](
	[InquiresId] [nvarchar](50) NOT NULL,
	[PropertyId] [nvarchar](50) NULL,
	[CarId] [nvarchar](50) NULL,
	[CreatedDate] [nvarchar](50) NULL,
	[UpdatedDate] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[IsDone] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Tbl_Inquires] PRIMARY KEY CLUSTERED 
(
	[InquiresId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_MemberPlan]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_MemberPlan](
	[MemberPlan_Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberPlan] [nvarchar](50) NOT NULL,
	[ActiveDate] [nvarchar](50) NOT NULL,
	[ExpireDate] [nvarchar](50) NOT NULL,
	[IsExtend] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Tbl_MemberPlan] PRIMARY KEY CLUSTERED 
(
	[MemberPlan_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Property]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Property](
	[PropertyId] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[PaymentOption] [nvarchar](50) NOT NULL,
	[Location] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[NumberOfViewers] [nvarchar](50) NULL,
	[Bedrooms] [int] NULL,
	[Bathrooms] [int] NULL,
	[Area] [nvarchar](50) NOT NULL,
	[Condition] [nvarchar](50) NULL,
	[Floor] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Furnished] [nvarchar](50) NULL,
	[MapUrl] [nvarchar](250) NULL,
	[SellerName] [nvarchar](50) NOT NULL,
	[PrimaryPhoneNumber] [nvarchar](50) NOT NULL,
	[SecondaryPhoneNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[CreatedBy] [nvarchar](250) NOT NULL,
	[CreatedDate] [nvarchar](50) NOT NULL,
	[UpdatedBy] [nvarchar](250) NULL,
	[UpdatedDate] [nvarchar](50) NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsPopular] [bit] NULL,
	[IsHotDeal] [bit] NULL,
	[Approved] [int] NULL,
 CONSTRAINT [PK_Tbl_Property] PRIMARY KEY CLUSTERED 
(
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_PropertyFeature]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PropertyFeature](
	[PropertyFeatureId] [nvarchar](50) NOT NULL,
	[PropertyId] [nvarchar](50) NOT NULL,
	[FeatureId] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_PropertyFeature] PRIMARY KEY CLUSTERED 
(
	[PropertyFeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_User]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_User](
	[UserId] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[UserRole] [nvarchar](15) NOT NULL,
	[CreatedDate] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[FailedCount] [int] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempTable]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempTable](
	[InquiresId] [nvarchar](50) NOT NULL,
	[PropertyId] [nvarchar](50) NULL,
	[CarId] [nvarchar](50) NULL,
	[CreatedDate] [nvarchar](50) NULL,
	[UpdatedDate] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[IsDone] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Status] [nvarchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tbl_Car] ADD  CONSTRAINT [DF_Tbl_Car_IsPopular]  DEFAULT ((0)) FOR [IsPopular]
GO
ALTER TABLE [dbo].[Tbl_Car] ADD  CONSTRAINT [DF_Tbl_Car_IsHotDeal]  DEFAULT ((0)) FOR [IsHotDeal]
GO
ALTER TABLE [dbo].[Tbl_Property] ADD  CONSTRAINT [DF_Tbl_Property_IsPopular]  DEFAULT ((0)) FOR [IsPopular]
GO
ALTER TABLE [dbo].[Tbl_Property] ADD  CONSTRAINT [DF_Tbl_Property_IsHotDeal]  DEFAULT ((0)) FOR [IsHotDeal]
GO
ALTER TABLE [dbo].[Tbl_PropertyFeature]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_PropertyFeature_Tbl_Feature] FOREIGN KEY([FeatureId])
REFERENCES [dbo].[Tbl_Feature] ([FeatureId])
GO
ALTER TABLE [dbo].[Tbl_PropertyFeature] CHECK CONSTRAINT [FK_Tbl_PropertyFeature_Tbl_Feature]
GO
/****** Object:  StoredProcedure [dbo].[AdsCountResult]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdsCountResult]
@Pages NVARCHAR(50)=NULL,
@Status NVARCHAR (50) = NULL,
@Layout NVARCHAR (50) = NULL

AS
BEGIN
SET NOCOUNT ON;

	DECLARE @SQL NVARCHAR(MAX);
    DECLARE @Params NVARCHAR(MAX);

	SET @SQL = N' SELECT COUNT(*) AS TotalCount FROM Tbl_Ads';

	SET @Params = N'@Pages NVARCHAR(50),@Layout NVARCHAR (50),@Status NVARCHAR (50)';

	IF(@Status IS NOT NULL AND @Status = 'Active')
		SET @SQL = @SQL + N' WHERE EndDate > GETDATE()';

	IF(@Status IS NOT NULL AND @Status = 'InActive')
		SET @SQL = @SQL + N' WHERE EndDate <= GETDATE()';

	IF(@Layout IS NOT NULL)
		SET @SQL = @SQL + N' WHERE AdsLayout = @Layout';

	IF(@Pages IS NOT NULL)
	SET @SQL = N' SELECT COUNT(*) AS TotalCount FROM TBL_Ads Ads INNER JOIN Tbl_AdsPagePlacement Adp
	ON Ads.AdsId=Adp.AdsId INNER JOIN Tbl_AdsPage AP ON Adp.AdsPageId=Ap.AdsPageId
	WHERE Pages IN (SELECT VALUE FROM STRING_SPLIT(@Pages, '',''))';

	PRINT @SQL
	EXEC sp_executesql @SQL, @Params, @Pages,@Layout,@Status;
END

GO
/****** Object:  StoredProcedure [dbo].[CarCountResult]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CarCountResult]
    @Manufacturer NVARCHAR(50) = NULL,
	@Model NVARCHAR(50) = NULL,
    @EnginePower NVARCHAR(50) = NULL,
    @Gearbox NVARCHAR(50) = NULL,
	@SteerPosition NVARCHAR(50) = NULL,
	@Color NVARCHAR(50) = NULL,
	@Condition NVARCHAR(50) = NULL,
	@MinYear NVARCHAR(50) = NULL,
	@MaxYear NVARCHAR(50) = NULL,
	@FuelType NVARCHAR(50) = NULL,
	@IsPopular NVARCHAR(10)=NULL,
	@IsHotDeal NVARCHAR(10)=NULL,
	@MinPrice int = 0,
	@MaxPrice int = 0,
	@MinMileAge int = 0,
	@MaxMileAge int =0,
	@BuildType NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

	DECLARE @SQL NVARCHAR(MAX);
    DECLARE @Params NVARCHAR(MAX);

	SET @SQL = N'SELECT COUNT(*) AS TotalCount FROM Tbl_Car WHERE IsDeleted = 0';

	SET @Params = N'@Manufacturer NVARCHAR(50), @Model NVARCHAR(50), @EnginePower NVARCHAR(50),
	@Gearbox NVARCHAR(50), @SteerPosition NVARCHAR(50),@Color NVARCHAR(50),@Condition NVARCHAR(50),
	@MinYear NVARCHAR(50), @MaxYear NVARCHAR(50),@FuelType NVARCHAR(50), @MinPrice int,@MaxPrice int,
	@MinMileAge int,@MaxMileAge int,@BuildType NVARCHAR(50),
	@IsPopular NVARCHAR(10),@IsHotDeal NVARCHAR(10)';

	IF @Manufacturer IS NOT NULL
        SET @SQL = @SQL + N' AND Manufacturer = @Manufacturer';

	IF @Model IS NOT NULL
        SET @SQL = @SQL + N' AND Model = @Model';

	IF @Model IS NOT NULL
        SET @SQL = @SQL + N' AND EnginePower = @EnginePower';

	IF @Gearbox IS NOT NULL
        SET @SQL = @SQL + N' AND Gearbox = @Gearbox';

	IF @SteerPosition IS NOT NULL
        SET @SQL = @SQL + N' AND SteeringPosition = @SteerPosition';

	IF @Color IS NOT NULL
        SET @SQL = @SQL + N' AND Color = @Color';

	IF @Condition IS NOT NULL
        SET @SQL = @SQL + N' AND Condition = @Condition';

	IF (@MinYear <> 0 AND @MaxYear <> 0)
        SET @SQL = @SQL + N' AND Year BETWEEN @MinYear AND @MaxYear';

	IF @FuelType IS NOT NULL
        SET @SQL = @SQL + N' AND FuelType = @FuelType';

	IF (@MinPrice <> 0 AND @MaxPrice <> 0)
		SET @SQL = @SQL + N' AND Price BETWEEN @MinPrice AND @MaxPrice';

	IF (@MinPrice <> 0 AND @MaxPrice <> 0)
		SET @SQL = @SQL + N' AND Price BETWEEN @MinPrice AND @MaxPrice';

	IF(@MinMileAge <> 0 AND @MaxMileAge <> 0)
		SET @SQL = @SQL + N' AND Mileage BETWEEN @MinMileAge AND @MaxMileAge';

	IF @IsPopular = 'true'
		SET @SQL = @SQL + N' AND IsPopular = 1';

	IF @IsPopular = 'false'
		SET @SQL = @SQL + N' AND IsPopular = 0';

	IF @IsHotDeal = 'true'
		SET @SQL = @SQL + N' AND IsHotDeal = 1';

	IF @IsHotDeal = 'false'
		SET @SQL = @SQL + N' AND IsHotDeal = 0';

	IF @BuildType IS NOT NULL
		SET @SQL = @SQL + N' AND BuildType = @BuildType';

	PRINT @SQL
    EXEC sp_executesql @SQL, @Params, @Manufacturer, @Model, @EnginePower, @Gearbox, @SteerPosition,
	@Color, @Condition, @MinYear,@MaxYear, @FuelType, @MinPrice, @MaxPrice,@MinMileAge,@MaxMileAge,
	@IsPopular,@IsHotDeal,@BuildType;
END;
GO
/****** Object:  StoredProcedure [dbo].[FilterFeatures]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FilterFeatures]
    @Name NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @SQL NVARCHAR(MAX);
    DECLARE @Params NVARCHAR(MAX);
    
    SET @Params = N'@Name NVARCHAR(50)';
    SET @SQL = N'SELECT * FROM Tbl_Feature WHERE Name IN (SELECT value FROM STRING_SPLIT(@Name, '',''))';

    EXEC sp_executesql @SQL, @Params, @Name = @Name;
END
GO
/****** Object:  StoredProcedure [dbo].[GetFilterAds]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFilterAds]
@Pages NVARCHAR(50)=NULL,
@Status NVARCHAR (50) = NULL,
@Layout NVARCHAR (50) = NULL,
@PageNo INT = 0,
@PageSize INT = 0

AS
BEGIN
SET NOCOUNT ON;

	DECLARE @SQL NVARCHAR(MAX);
    DECLARE @Params NVARCHAR(MAX);
	DECLARE @Offset INT = (@PageNo - 1) * @PageSize;

	SET @SQL = N' SELECT * FROM Tbl_Ads WHERE IsDeleted = 0';

	SET @Params = N'@Pages NVARCHAR(50),@Layout NVARCHAR (50),@Status NVARCHAR (50),
	@PageNo INT,@PageSize INT,@Offset INT';

	IF(@Status IS NOT NULL AND @Status = 'Active')
		SET @SQL = @SQL + N' AND EndDate > GETDATE()';

	IF(@Status IS NOT NULL AND @Status = 'InActive')
		SET @SQL = @SQL + N' AND EndDate <= GETDATE()';

	IF(@Layout IS NOT NULL)
		SET @SQL = @SQL + N' AND AdsLayout = @Layout';

	IF(@Pages IS NOT NULL)
	SET @SQL = N' SELECT Ads.* FROM TBL_Ads Ads INNER JOIN Tbl_AdsPagePlacement Adp
	ON Ads.AdsId=Adp.AdsId INNER JOIN Tbl_AdsPage AP ON Adp.AdsPageId=Ap.AdsPageId
	WHERE Pages IN (SELECT VALUE FROM STRING_SPLIT(@Pages, '',''))';

	SET @SQL = @SQL + N' ORDER BY AdsId DESC OFFSET @Offset ROWS FETCH NEXT @PageSize ROWS ONLY';

	PRINT @SQL
	EXEC sp_executesql @SQL, @Params, @Pages,@Layout,@Status,@PageNo,@PageSize,@Offset;
END
GO
/****** Object:  StoredProcedure [dbo].[GetFilterCar]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFilterCar]
    @Manufacturer NVARCHAR(50) = NULL,
	@Model NVARCHAR(50) = NULL,
    @EnginePower NVARCHAR(50) = NULL,
    @Gearbox NVARCHAR(50) = NULL,
	@SteerPosition NVARCHAR(50) = NULL,
	@Color NVARCHAR(50) = NULL,
	@Condition NVARCHAR(50) = NULL,
	@MinYear NVARCHAR(50) = NULL,
	@MaxYear NVARCHAR(50) = NULL,
	@FuelType NVARCHAR(50) = NULL,
	@IsPopular NVARCHAR(10)=NULL,
	@IsHotDeal NVARCHAR(10)=NULL,
	@MinPrice int = 0,
	@MaxPrice int = 0,
	@MinMileAge int = 0,
	@MaxMileAge int =0,
	@BuildType NVARCHAR(50) = NULL,
	@PageNo int = 0,
	@PageSize int = 0
AS
BEGIN
    SET NOCOUNT ON;

	DECLARE @SQL NVARCHAR(MAX);
    DECLARE @Params NVARCHAR(MAX);
	DECLARE @Offset INT = (@PageNo - 1) * @PageSize;

	SET @SQL = N'SELECT * FROM Tbl_Car WHERE IsDeleted = 0';

	SET @Params = N'@Manufacturer NVARCHAR(50), @Model NVARCHAR(50), @EnginePower NVARCHAR(50),
	@Gearbox NVARCHAR(50), @SteerPosition NVARCHAR(50),@Color NVARCHAR(50),@Condition NVARCHAR(50),
	@MinYear NVARCHAR(50), @MaxYear NVARCHAR(50),@FuelType NVARCHAR(50), @MinPrice int,@MaxPrice int,
	@MinMileAge int,@MaxMileAge int,@BuildType NVARCHAR(50),
	@IsPopular NVARCHAR(10),@IsHotDeal NVARCHAR(10), @PageNo INT, @PageSize INT, @Offset INT';

	IF @Manufacturer IS NOT NULL
        SET @SQL = @SQL + N' AND Manufacturer = @Manufacturer';

	IF @Model IS NOT NULL
        SET @SQL = @SQL + N' AND Model = @Model';

	IF @EnginePower IS NOT NULL
        SET @SQL = @SQL + N' AND EnginePower = @EnginePower';

	IF @Gearbox IS NOT NULL
        SET @SQL = @SQL + N' AND Gearbox = @Gearbox';

	IF @SteerPosition IS NOT NULL
        SET @SQL = @SQL + N' AND SteeringPosition = @SteerPosition';

	IF @Color IS NOT NULL
        SET @SQL = @SQL + N' AND Color = @Color';

	IF @Condition IS NOT NULL
        SET @SQL = @SQL + N' AND Condition = @Condition';

	IF (@MinYear <> 0 AND @MaxYear <> 0)
        SET @SQL = @SQL + N' AND Year BETWEEN @MinYear AND @MaxYear';

	IF @FuelType IS NOT NULL
        SET @SQL = @SQL + N' AND FuelType = @FuelType';

	IF (@MinPrice <> 0 AND @MaxPrice <> 0)
		SET @SQL = @SQL + N' AND Price BETWEEN @MinPrice AND @MaxPrice';

	IF(@MinMileAge <> 0 AND @MaxMileAge <> 0)
		SET @SQL = @SQL + N' AND Mileage BETWEEN @MinMileAge AND @MaxMileAge';

	IF @IsPopular = 'true'
		SET @SQL = @SQL + N' AND IsPopular = 1';

	IF @IsPopular = 'false'
		SET @SQL = @SQL + N' AND IsPopular = 0';

	IF @IsHotDeal = 'true'
		SET @SQL = @SQL + N' AND IsHotDeal = 1';

	IF @IsHotDeal = 'false'
		SET @SQL = @SQL + N' AND IsHotDeal = 0';

	IF @BuildType IS NOT NULL
		SET @SQL = @SQL + N' AND BuildType = @BuildType';

	SET @SQL = @SQL + N' ORDER BY CreatedDate DESC OFFSET @Offset ROWS FETCH NEXT @PageSize ROWS ONLY';

	PRINT @SQL
    EXEC sp_executesql @SQL, @Params, @Manufacturer, @Model, @EnginePower, @Gearbox, @SteerPosition,
	@Color, @Condition, @MinYear, @MaxYear, @FuelType, @MinPrice, @MaxPrice,@MinMileAge,@MaxMileAge,
	@IsPopular,@IsHotDeal,@BuildType, @PageNo, @PageSize, @Offset;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetFilterCarInquiry]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFilterCarInquiry]
    @Status NVARCHAR(50) = NULL,
    @InquiryStatus NVARCHAR(10) = NULL,
	@PageNo INT = 0,
	@PageSize INT = 0
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @SQL NVARCHAR(MAX);
    DECLARE @Params NVARCHAR(MAX);
	DECLARE @Offset INT = (@PageNo - 1) * @PageSize;

	SET @SQL = N' SELECT TI.*,TC.Status FROM Tbl_Inquires TI';

	SET @Params = N'@Status NVARCHAR(50),@InquiryStatus NVARCHAR(10), @PageNo INT, @PageSize INT, @Offset INT';

	IF(@Status IS NOT NULL AND @InquiryStatus IS NULL)
		SET @SQL = @SQL + N' INNER JOIN Tbl_Car TC ON TI.CarId = TC.CarId
		WHERE TC.Status IN (SELECT VALUE FROM STRING_SPLIT(@Status, '','')) AND TI.IsDeleted = 0';

	IF(@Status IS NOT NULL AND @InquiryStatus = 'Done')
		SET @SQL = @SQL + N' INNER JOIN Tbl_Car TC ON TI.CarId = TC.CarId
		WHERE TI.IsDone = 1 AND TC.Status IN (SELECT VALUE FROM STRING_SPLIT(@Status, '',''))
		AND TI.IsDeleted = 0';

	IF(@Status IS NOT NULL AND @InquiryStatus = 'Unread')
		SET @SQL = @SQL + N' INNER JOIN Tbl_Car TC ON TI.CarId = TC.CarId
		WHERE TI.IsDone = 0 AND TC.Status IN (SELECT VALUE FROM STRING_SPLIT(@Status, '',''))
		AND TI.IsDeleted = 0';

	IF(@Status IS NULL AND @InquiryStatus IS NOT NULL AND @InquiryStatus = 'Done')
		SET @SQL = N' SELECT * FROM TBL_Inquires WHERE IsDone = 1 AND IsDeleted = 0';

	IF(@Status IS NULL AND @InquiryStatus IS NOT NULL AND @InquiryStatus = 'Unread')
		SET @SQL = N' SELECT * FROM TBL_Inquires WHERE IsDone = 0 AND IsDeleted = 0';

	SET @SQL = @SQL + N' INNER JOIN Tbl_Car TC ON TI.CarId = TP.CarId
		WHERE TI.IsDeleted = 0';

	SET @SQL = @SQL + N' ORDER BY TI.CreatedDate DESC OFFSET @Offset ROWS 
	FETCH NEXT @PageSize ROWS ONLY';

	PRINT @SQL
    EXEC sp_executesql @SQL, @Params,@Status,@InquiryStatus, @PageNo, @PageSize, @Offset;


END;
GO
/****** Object:  StoredProcedure [dbo].[GetFilterProperty]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFilterProperty]
    @Location NVARCHAR(50) = NULL,
    @Furnished NVARCHAR(50) = NULL,
    @Type NVARCHAR(50) = NULL,
	@PaymentOption NVARCHAR(50) = NULL,
	@Status NVARCHAR(50) = NULL,
	@MinPrice int = 0,
	@MaxPrice int = 0,
	@MinBedRooms int = 0,
	@MaxBedRooms int = 0,
	@MinBathRooms int = 0,
	@MaxBathRooms int = 0,
	@IsPopular NVARCHAR(10) = NULL,
	@IsHotDeal NVARCHAR(10) = NULL,
	@PageNo int = 0,
	@PageSize int = 0
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @SQL NVARCHAR(MAX);
    DECLARE @Params NVARCHAR(MAX);
	DECLARE @Offset INT = (@PageNo - 1) * @PageSize;

    SET @SQL = N'SELECT * FROM Tbl_Property WHERE IsDeleted = 0';

    SET @Params = N'@Location NVARCHAR(50), @Furnished NVARCHAR(50), @Type NVARCHAR(50),
	@PaymentOption NVARCHAR(50),@Status NVARCHAR(50), @MinPrice int,@MaxPrice int,@MinBedRooms int,@MaxBedRooms int,
	@MinBathRooms int,@MaxBathRooms int,@IsPopular NVARCHAR(10),@IsHotDeal NVARCHAR(10),@PageNo INT, @PageSize INT, @Offset INT';

    IF @Location IS NOT NULL
        SET @SQL = @SQL + N' AND Location = @Location';

    IF @Furnished IS NOT NULL
        SET @SQL = @SQL + N' AND Furnished = @Furnished';

	IF @PaymentOption IS NOT NULL
        SET @SQL = @SQL + N' AND PaymentOption = @PaymentOption';

	IF @Status IS NOT NULL
        SET @SQL = @SQL + N' AND Status = @Status';

    IF (@Type IS NOT NULL AND @Type <> 'Any')
        SET @SQL = @SQL + N' AND Type IN (SELECT VALUE FROM STRING_SPLIT(@Type, '',''))';

	IF @Type = 'Any'
        SET @SQL = @SQL;

	IF (@MinPrice<>0 AND @MaxPrice<>0)
		SET @SQL = @SQL + N' AND Price BETWEEN @MinPrice AND @MaxPrice';

	IF (@MinBedRooms<>0 AND @MaxBedRooms<>0)
		SET @SQL = @SQL + N' AND Bedrooms BETWEEN @MinBedRooms AND @MaxBedRooms';

	IF (@MinBathRooms<>0 AND @MaxBathRooms<>0)
		SET @SQL = @SQL + N' AND Bathrooms BETWEEN @MinBathRooms AND @MinBathRooms';

	IF @IsPopular = 'true'
		SET @SQL = @SQL + N' AND IsPopular = 1'

	IF @IsPopular = 'false'
		SET @SQL = @SQL + N' AND IsPopular = 0'

	IF @IsHotDeal = 'true'
		SET @SQL = @SQL + N' AND IsHotDeal = 1'

	IF @IsHotDeal = 'false'
		SET @SQL = @SQL + N' AND IsHotDeal = 0'

	SET @SQL = @SQL + N' ORDER BY CreatedDate DESC OFFSET @Offset ROWS FETCH NEXT @PageSize ROWS ONLY';

	PRINT @SQL
    EXEC sp_executesql @SQL, @Params, @Location, @Furnished, @Type, @PaymentOption, @Status, @MinPrice, @MaxPrice, 
	@MinBedRooms, @MaxBedRooms,@MinBathRooms,@MaxBathRooms,
	@IsPopular,@IsHotDeal,@PageNo, @PageSize, @Offset;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetFilterProperty_Test]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFilterProperty_Test]
    @Location NVARCHAR(50) = NULL,
    @Furnished NVARCHAR(50) = NULL,
    @Type NVARCHAR(50) = NULL,
	@PaymentOption NVARCHAR(50) = NULL,
	@MinPrice int = 0,
	@MaxPrice int = 0,
	@MinBedRooms int = 0,
	@MaxBedRooms int = 0,
	@PageNo int = 0,
	@PageSize int = 0
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @SQL NVARCHAR(MAX);
    DECLARE @Params NVARCHAR(MAX);
	DECLARE @Offset INT = (@PageNo - 1) * @PageSize;

    SET @SQL = N'SELECT * FROM Tbl_Property WHERE IsDeleted = 0';

    SET @Params = N'@Location NVARCHAR(50), @Furnished NVARCHAR(50), @Type NVARCHAR(50),
	@PaymentOption NVARCHAR(50), @MinPrice int,@MaxPrice int,@MinBedRooms int,@MaxBedRooms int,
	@PageNo INT, @PageSize INT, @Offset INT';

    IF @Location IS NOT NULL
        SET @SQL = @SQL + N' AND Location = @Location';

    IF @Furnished IS NOT NULL
        SET @SQL = @SQL + N' AND Furnished = @Furnished';

	IF @PaymentOption IS NOT NULL
        SET @SQL = @SQL + N' AND PaymentOption = @PaymentOption';

    IF (@Type IS NOT NULL AND @Type <> 'Any')
        SET @SQL = @SQL + N' AND Type IN (SELECT VALUE FROM STRING_SPLIT(@Type, '',''))';

	IF @Type = 'Any'
        SET @SQL = @SQL;

	IF (@MinPrice <> 0 AND @MaxPrice <> 0)
		SET @SQL = @SQL + N' AND Price BETWEEN @MinPrice AND @MaxPrice';

	IF (@MinBedRooms <> 0 AND @MaxBedRooms <> 0)
		SET @SQL = @SQL + N' AND Bedrooms BETWEEN @MinBedRooms AND @MaxBedRooms';

	SET @SQL = @SQL + N' ORDER BY CreatedDate DESC OFFSET @Offset ROWS FETCH NEXT @PageSize ROWS ONLY';

	PRINT @SQL
    EXEC sp_executesql @SQL, @Params, @Location, @Furnished, @Type, @PaymentOption, @MinPrice, @MaxPrice, @MinBedRooms, @MaxBedRooms,
	@PageNo, @PageSize, @Offset;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetFilterPropertyInquiry]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFilterPropertyInquiry]
    @Status NVARCHAR(50) = NULL,
    @InquiryStatus NVARCHAR(10) = NULL,
	@PageNo INT = 0,
	@PageSize INT = 0
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @SQL NVARCHAR(MAX);
    DECLARE @Params NVARCHAR(MAX);
	DECLARE @Offset INT = (@PageNo - 1) * @PageSize;

	SET @SQL = N' SELECT TI.*,TP.Status FROM Tbl_Inquires TI';

	SET @Params = N'@Status NVARCHAR(50),@InquiryStatus NVARCHAR(10), @PageNo INT, @PageSize INT, @Offset INT';

	IF(@Status IS NOT NULL AND @InquiryStatus IS NULL)
		SET @SQL = @SQL + N' INNER JOIN Tbl_Property TP ON TI.PropertyId = TP.PropertyId
		WHERE TP.Status IN (SELECT VALUE FROM STRING_SPLIT(@Status, '','')) AND TI.IsDeleted = 0';

	IF(@Status IS NOT NULL AND @InquiryStatus = 'Done')
		SET @SQL = @SQL + N' INNER JOIN Tbl_Property TP ON TI.PropertyId = TP.PropertyId
		WHERE TI.IsDone = 1 AND TP.Status IN (SELECT VALUE FROM STRING_SPLIT(@Status, '',''))
		AND TI.IsDeleted = 0';

	IF(@Status IS NOT NULL AND @InquiryStatus = 'Unread')
		SET @SQL = @SQL + N' INNER JOIN Tbl_Property TP ON TI.PropertyId = TP.PropertyId
		WHERE TI.IsDone = 0 AND TP.Status IN (SELECT VALUE FROM STRING_SPLIT(@Status, '',''))
		AND TI.IsDeleted = 0';

	IF(@Status IS NULL AND @InquiryStatus IS NOT NULL AND @InquiryStatus = 'Done')
		SET @SQL = N' SELECT * FROM TBL_Inquires WHERE IsDone = 1 AND IsDeleted = 0';

	IF(@Status IS NULL AND @InquiryStatus IS NOT NULL AND @InquiryStatus = 'Unread')
		SET @SQL = N' SELECT * FROM TBL_Inquires WHERE IsDone = 0 AND IsDeleted = 0';
	
	IF(@Status IS NULL AND @InquiryStatus IS NULL)
		SET @SQL = @SQL + N' INNER JOIN Tbl_Property TP ON TI.PropertyId = TP.PropertyId
	WHERE TI.IsDeleted = 0';

	SET @SQL = @SQL + N' ORDER BY CreatedDate DESC OFFSET @Offset ROWS 
	FETCH NEXT @PageSize ROWS ONLY';

	PRINT @SQL
    EXEC sp_executesql @SQL, @Params,@Status,@InquiryStatus, @PageNo, @PageSize, @Offset;


END;
GO
/****** Object:  StoredProcedure [dbo].[PropertyCountResult]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PropertyCountResult]
    @Location NVARCHAR(50) = NULL,
    @Furnished NVARCHAR(50) = NULL,
    @Type NVARCHAR(50) = NULL,
	@PaymentOption NVARCHAR(50) = NULL,
	@Status NVARCHAR(50) = NULL,
	@MinPrice int = 0,
	@MaxPrice int = 0,
	@MinBedRooms int = 0,
	@MinBathRooms int = 0,
	@MaxBathRooms int = 0,
	@MaxBedRooms int = 0,
	@IsPopular NVARCHAR(10) = NULL,
	@IsHotDeal NVARCHAR(10) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @SQL NVARCHAR(MAX);
    DECLARE @Params NVARCHAR(MAX);

    SET @SQL = N'SELECT COUNT(*) AS TotalCount FROM Tbl_Property WHERE IsDeleted = 0';

    SET @Params = N'@Location NVARCHAR(50), @Furnished NVARCHAR(50), @Type NVARCHAR(50),
	@PaymentOption NVARCHAR(50), @Status NVARCHAR(50), @MinPrice int,@MaxPrice int,@MinBedRooms int,@MaxBedRooms int,
	@MinBathRooms int,@MaxBathRooms int,@IsPopular NVARCHAR(10),@IsHotDeal NVARCHAR(10)';

    IF @Location IS NOT NULL
        SET @SQL = @SQL + N' AND Location = @Location';

    IF @Furnished IS NOT NULL
        SET @SQL = @SQL + N' AND Furnished = @Furnished';

	IF @PaymentOption IS NOT NULL
        SET @SQL = @SQL + N' AND PaymentOption = @PaymentOption';

	IF @Status IS NOT NULL
        SET @SQL = @SQL + N' AND Status = @Status';

    IF (@Type IS NOT NULL AND @Type <> 'Any')
        SET @SQL = @SQL + N' AND Type IN (SELECT VALUE FROM STRING_SPLIT(@Type, '',''))';

	IF @Type = 'Any'
        SET @SQL = @SQL;

	IF (@MinPrice<>0 AND @MaxPrice<>0)
		SET @SQL = @SQL + N' AND Price BETWEEN @MinPrice AND @MaxPrice';

	IF (@MinBedRooms<>0 AND @MaxBedRooms<>0)
		SET @SQL = @SQL + N' AND Bedrooms BETWEEN @MinBedRooms AND @MaxBedRooms';

	IF (@MinBathRooms<>0 AND @MaxBathRooms<>0)
		SET @SQL = @SQL + N' AND Bathrooms BETWEEN @MinBathRooms AND @MinBathRooms';

	IF @IsPopular = 'true'
		SET @SQL = @SQL + N' AND IsPopular = 1'

	IF @IsPopular = 'false'
		SET @SQL = @SQL + N' AND IsPopular = 0'

	IF @IsHotDeal = 'true'
		SET @SQL = @SQL + N' AND IsHotDeal = 1'

	IF @IsHotDeal = 'false'
		SET @SQL = @SQL + N' AND IsHotDeal = 0'

	PRINT @SQL
    EXEC sp_executesql @SQL, @Params, @Location, @Furnished, @Type, @PaymentOption, @Status, @MinPrice, @MaxPrice, 
	@MinBedRooms, @MaxBedRooms,@MinBathRooms,@MaxBathRooms,
	@IsPopular,@IsHotDeal;
END;
GO
/****** Object:  StoredProcedure [dbo].[PropertyInquiryCountResult]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PropertyInquiryCountResult]
    @Status NVARCHAR(50) = NULL,
    @InquiryStatus NVARCHAR(10) = NULL
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @SQL NVARCHAR(MAX);
    DECLARE @Params NVARCHAR(MAX);

	SET @SQL = N' SELECT Count(*) As TotalCount FROM Tbl_Inquires TI';

	SET @Params = N'@Status NVARCHAR(50),@InquiryStatus NVARCHAR(10)';

	IF(@Status IS NOT NULL AND @InquiryStatus IS NULL)
		SET @SQL = @SQL + N' INNER JOIN Tbl_Property TP ON TI.PropertyId = TP.PropertyId
		WHERE TP.Status IN (SELECT VALUE FROM STRING_SPLIT(@Status, '','')) AND TI.IsDeleted = 0';

	IF(@Status IS NOT NULL AND @InquiryStatus = 'Done')
		SET @SQL = @SQL + N' INNER JOIN Tbl_Property TP ON TI.PropertyId = TP.PropertyId
		WHERE TI.IsDone = 1 AND TP.Status IN (SELECT VALUE FROM STRING_SPLIT(@Status, '',''))
		AND TI.IsDeleted = 0';

	IF(@Status IS NOT NULL AND @InquiryStatus = 'Unread')
		SET @SQL = @SQL + N' INNER JOIN Tbl_Property TP ON TI.PropertyId = TP.PropertyId
		WHERE TI.IsDone = 0 AND TP.Status IN (SELECT VALUE FROM STRING_SPLIT(@Status, '',''))
		AND TI.IsDeleted = 0';

	IF(@Status IS NULL AND @InquiryStatus IS NOT NULL AND @InquiryStatus = 'Done')
		SET @SQL = N' SELECT COUNT(*) AS TotalCount FROM TBL_Inquires WHERE IsDone = 1 AND IsDeleted = 0';

	IF(@Status IS NULL AND @InquiryStatus IS NOT NULL AND @InquiryStatus = 'Unread')
		SET @SQL = N' SELECT COUNT(*) AS TotalCount FROM TBL_Inquires WHERE IsDone = 0 AND IsDeleted = 0';
	
	IF(@Status IS NULL AND @InquiryStatus IS NULL)
		SET @SQL = @SQL + N' INNER JOIN Tbl_Property TP ON TI.PropertyId = TP.PropertyId
	WHERE TI.IsDeleted = 0';

	PRINT @SQL
    EXEC sp_executesql @SQL, @Params,@Status,@InquiryStatus;


END;
GO
/****** Object:  StoredProcedure [dbo].[Sp_InquiryCarCount]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE PROC Sp_InquiryPropertyForRentCount
--AS BEGIN
--	SELECT 
--		COUNT(*) AS InquiryPropertyForRentCount
--	FROM Tbl_Inquires
--	INNER JOIN Tbl_Property
--		ON Tbl_Inquires.PropertyId = Tbl_Property.PropertyId
--	WHERE 
--		Tbl_Inquires.PropertyId IS NOT NULL 
--		AND Tbl_Property.Status = N'ငှားရန်'
--		AND Tbl_Property.IsDeleted = 0
--		AND Tbl_Inquires.IsDeleted = 0
--	GROUP BY Tbl_Inquires.PropertyId;
--END

CREATE PROC [dbo].[Sp_InquiryCarCount]
AS BEGIN
	SELECT COUNT(*) AS InquiryCarCount FROM Tbl_Inquires
	INNER JOIN Tbl_Car ON Tbl_Inquires.CarId = Tbl_Car.CarId
	WHERE Tbl_Inquires.CarId != NULL
	AND Tbl_Car.IsDeleted = 0
	AND Tbl_Inquires.IsDeleted = 0
	GROUP BY Tbl_Inquires.CarId;
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_InquiryPropertyForRentCount]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Sp_InquiryPropertyForRentCount]
AS BEGIN
	SELECT 
		COUNT(*) AS InquiryPropertyForRentCount
	FROM Tbl_Inquires
	INNER JOIN Tbl_Property
		ON Tbl_Inquires.PropertyId = Tbl_Property.PropertyId
	WHERE 
		Tbl_Inquires.PropertyId IS NOT NULL 
		AND Tbl_Property.Status = N'ငှားရန်'
		AND Tbl_Property.IsDeleted = 0
		AND Tbl_Inquires.IsDeleted = 0
	GROUP BY Tbl_Inquires.PropertyId;
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_InquiryPropertyForSaleCount]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Sp_InquiryPropertyForSaleCount]
AS BEGIN
	SELECT 
		COUNT(*) AS InquiryPropertyForSaleCount
	FROM Tbl_Inquires
	INNER JOIN Tbl_Property
		ON Tbl_Inquires.PropertyId = Tbl_Property.PropertyId
	WHERE 
		Tbl_Inquires.PropertyId IS NOT NULL 
		AND Tbl_Property.Status = N'ရောင်းရန်'
		AND Tbl_Property.IsDeleted = 0
		AND Tbl_Inquires.IsDeleted = 0
	GROUP BY Tbl_Inquires.PropertyId;
END

GO
/****** Object:  StoredProcedure [dbo].[SubFilter]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SubFilter]
    @PropertyIds NVARCHAR(MAX) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @SQL NVARCHAR(MAX);
    DECLARE @Params NVARCHAR(MAX);

    SET @SQL = N'
    SELECT p.*
    FROM Tbl_Property p
    INNER JOIN Tbl_PropertyFeature pf ON p.PropertyID = pf.PropertyID
    WHERE p.IsDeleted = 0
    AND pf.FeatureId IN (SELECT VALUE FROM STRING_SPLIT(@PropertyIds, '',''))';

    SET @Params = N'@PropertyIds NVARCHAR(MAX)';

    EXEC sp_executesql @SQL, @Params, @PropertyIds = @PropertyIds;
END;
GO
/****** Object:  StoredProcedure [dbo].[TotalCountResult]    Script Date: 10/13/2024 9:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TotalCountResult]
@Type NVARCHAR(50)=NULL

AS
BEGIN
	IF(@Type = 'Inquiry')
		SELECT COUNT(*) AS TotalCount FROM Tbl_Inquires TI INNER JOIN Tbl_Property TP 
		ON TI.PropertyId = TP.PropertyId WHERE TI.IsDeleted = 0

	IF(@Type = 'Property')
		SELECT COUNT (*) AS TotalCount FROM TBL_Property WHERE IsDeleted = 0
END
GO
