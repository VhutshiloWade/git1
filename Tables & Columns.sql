IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblApprovalRequests]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblApprovalRequests](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iRequestID] [bigint] NOT NULL,
	[cRequestType] [varchar](50) NOT NULL,
	[iIncidentID] [bigint] NULL,
	[iIncidentTypeID] [bigint] NULL,
	[iIncidentPriorityID] [bigint] NULL,
	[iCurrentStepID] [bigint] NULL,
	[iCurrentStep] [int] NOT NULL,
	[cStatus] [nvarchar](max) NULL,
	[iCreateUser] [bigint] NOT NULL,
	[dDateCreated] [datetime] NULL,
	[iRequestUser] [bigint] NOT NULL,
	[dRequestDate] [datetime] NULL,
	[iActionUser] [bigint] NULL,
	[dActionDate] [datetime] NULL,
	[cRejectionReason] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo._ccg_GL_tblApprovalRequests] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblAssetClassifications]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblAssetClassifications]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblAssetClassifications](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[cCode] [varchar](50) NULL,
	[cDescription] [varchar](250) NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblBatchIncident]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblBatchIncident]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblBatchIncident](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[iBatchID] [int] NULL,
	[iIncidentID] [int] NULL,
	[iUserID] [int] NULL,
	[dDateCreated] [date] NULL,
	[bLastStep] [bit] NULL,
	[fAmount] [float] NULL,
	[cBatchRef] [varchar](max) NULL,
	[iStatusID] [int] NULL,
	[iReviewerID] [int] NULL,
	[iCBbatchID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblBudget]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblBudget]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblBudget](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iMasterBudgetID] [bigint] NOT NULL,
	[iResponsibilityID] [bigint] NOT NULL,
	[cApprovalStatus] [varchar](50) NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastModifiedBy] [bigint] NULL,
	[dDateLastModified] [datetime] NULL,
	[iApprovedBy] [bigint] NULL,
	[dDateApproved] [datetime] NULL,
 CONSTRAINT [PK_dbo._ccg_GL_tblBudget] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblBudgetApproval]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblBudgetApproval]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblBudgetApproval](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iBudgetID] [bigint] NOT NULL,
	[cStatus] [nvarchar](max) NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastModifiedBy] [nvarchar](100) NULL,
	[dDateLastModified] [datetime] NULL,
 CONSTRAINT [PK_dbo._ccg_GL_tblBudgetApproval] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblBudgetImportTemplate]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblBudgetImportTemplate]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblBudgetImportTemplate](
	[Account] [nvarchar](255) NULL,
	[Account1] [nvarchar](255) NULL,
	[Account2] [nvarchar](255) NULL,
	[2023] [float] NULL,
	[Jul-22] [float] NULL,
	[Aug-22] [float] NULL,
	[Sep-22] [float] NULL,
	[Oct-22] [float] NULL,
	[Nov-22] [float] NULL,
	[Dec-22] [float] NULL,
	[Jan-23] [float] NULL,
	[Feb-23] [float] NULL,
	[Mar-23] [float] NULL,
	[Apr-23] [float] NULL,
	[May-23] [float] NULL,
	[Jun-23] [float] NULL,
	[20231] [nvarchar](255) NULL,
	[2024] [float] NULL,
	[2025] [float] NULL,
	[2026] [float] NULL,
	[2027] [float] NULL,
	[F22] [nvarchar](255) NULL,
	[F23] [nvarchar](255) NULL,
	[F24] [nvarchar](255) NULL,
	[F25] [nvarchar](255) NULL,
	[F26] [nvarchar](255) NULL,
	[F27] [nvarchar](255) NULL,
	[F28] [nvarchar](255) NULL,
	[F29] [nvarchar](255) NULL,
	[F30] [nvarchar](255) NULL,
	[F31] [nvarchar](255) NULL,
	[F32] [nvarchar](255) NULL,
	[F33] [nvarchar](255) NULL,
	[F34] [nvarchar](255) NULL,
	[F35] [nvarchar](255) NULL,
	[F36] [nvarchar](255) NULL,
	[F37] [nvarchar](255) NULL,
	[F38] [nvarchar](255) NULL,
	[F39] [nvarchar](255) NULL,
	[F40] [nvarchar](255) NULL,
	[F41] [nvarchar](255) NULL,
	[F42] [nvarchar](255) NULL,
	[F43] [nvarchar](255) NULL,
	[F44] [nvarchar](255) NULL,
	[F45] [nvarchar](255) NULL,
	[F46] [nvarchar](255) NULL,
	[F47] [nvarchar](255) NULL,
	[F48] [nvarchar](255) NULL,
	[F49] [nvarchar](255) NULL,
	[F50] [float] NULL,
	[F51] [float] NULL,
	[F52] [float] NULL,
	[F53] [float] NULL,
	[F54] [float] NULL,
	[F55] [float] NULL,
	[F56] [float] NULL,
	[F57] [float] NULL
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblBudgetLine]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblBudgetLine]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblBudgetLine](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iBudgetID] [bigint] NOT NULL,
	[iYearTypeID] [bigint] NULL,
	[iAccountLink] [bigint] NOT NULL,
	[fFullYear] [decimal](38, 2) NOT NULL,
	[fJul] [decimal](38, 2) NOT NULL,
	[fAug] [decimal](38, 2) NOT NULL,
	[fSep] [decimal](38, 2) NOT NULL,
	[fOct] [decimal](38, 2) NOT NULL,
	[fNov] [decimal](38, 2) NOT NULL,
	[fDec] [decimal](38, 2) NOT NULL,
	[fJan] [decimal](38, 2) NOT NULL,
	[fFeb] [decimal](38, 2) NOT NULL,
	[fMar] [decimal](38, 2) NOT NULL,
	[fApr] [decimal](38, 2) NOT NULL,
	[fMay] [decimal](38, 2) NOT NULL,
	[fJun] [decimal](38, 2) NOT NULL,
	[cComment] [varchar](max) NULL,
	[bCommentUpdated] [bit] NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastModifiedBy] [bigint] NULL,
	[dDateLastModified] [datetime] NULL,
 CONSTRAINT [PK_dbo._ccg_GL_tblBudgetLine] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblBudgetLineCommentsHistory]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblBudgetLineCommentsHistory]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblBudgetLineCommentsHistory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iBudgetLineID] [bigint] NULL,
	[cComment] [varchar](max) NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblBudgetLock]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblBudgetLock]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblBudgetLock](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iBudgetID] [bigint] NOT NULL,
	[cStatus] [nvarchar](max) NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastModifiedBy] [bigint] NULL,
	[dDateLastModified] [datetime] NULL,
 CONSTRAINT [PK_dbo._ccg_GL_tblBudgetLock] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblBudgetSettings]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblBudgetSettings]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblBudgetSettings](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iActiveBudgetYearID] [bigint] NOT NULL,
	[iActiveBudgetTypeID] [bigint] NOT NULL,
	[iActiveBudgetVersionID] [bigint] NOT NULL,
	[iBudgetApprovalIncidentID] [bigint] NOT NULL,
	[iBudgetApprovalIncidentPriorityID] [bigint] NOT NULL,
	[iModuleID] [bigint] NOT NULL,
	[bRestrictAccountAccess] [bit] NULL,
	[iAccountFilterSegmentID] [bigint] NULL,
	[iReportYearsOffset] [int] NULL,
	[iBudgetForecastYears] [int] NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastModifiedBy] [bigint] NULL,
	[dDateLastModified] [datetime] NULL,
 CONSTRAINT [PK_dbo._ccg_GL_tblMunicipalitySettings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblBudgetTypes]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblBudgetTypes]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblBudgetTypes](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[cCode] [nvarchar](max) NULL,
	[cBudgetType] [nvarchar](max) NULL,
	[bPostToFinancialSystemOnApproval] [bit] NOT NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastModifiedBy] [bigint] NULL,
	[dDateLastModified] [datetime] NULL,
 CONSTRAINT [PK_dbo._ccg_GL_tblBudgetTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblBudgetVersions]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblBudgetVersions]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblBudgetVersions](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[cCode] [nvarchar](max) NULL,
	[cVersion] [nvarchar](max) NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastModifiedBy] [bigint] NULL,
	[dDateLastModified] [datetime] NULL,
 CONSTRAINT [PK_dbo._ccg_GL_tblBudgetVersions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblBudgetYears]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblBudgetYears]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblBudgetYears](
	[ID] [bigint] IDENTITY(0,1) NOT NULL,
	[cDescription] [varchar](50) NULL
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblCbBatches]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblCbBatches]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblCbBatches](
	[idBatches] [int] IDENTITY(1,1) NOT NULL,
	[cBatchNo] [varchar](50) NULL,
	[cBatchDesc] [varchar](40) NULL,
	[bModuleGL] [bit] NOT NULL,
	[bModuleAR] [bit] NOT NULL,
	[bModuleAP] [bit] NOT NULL,
	[iInputTaxID] [int] NULL,
	[iInputTaxAccID] [int] NULL,
	[iOutputTaxID] [int] NULL,
	[iOutputTaxAccID] [int] NULL,
	[bCalcTax] [bit] NOT NULL,
	[iTrCodeID] [int] NULL,
	[bClearBatch] [bit] NOT NULL,
	[iDateLineOpt] [int] NULL,
	[dDefDate] [smalldatetime] NULL,
	[iRefLineOpt] [int] NULL,
	[cDefRef] [varchar](20) NULL,
	[iDescLineOpt] [int] NULL,
	[cDefDesc] [varchar](40) NULL,
	[iGLBankAccID] [int] NULL,
	[iGLARAccID] [int] NULL,
	[iGLAPAccID] [int] NULL,
	[iDefModule] [int] NULL,
	[bCheckedOut] [bit] NULL,
	[bDupRefs] [bit] NULL,
	[iMaxRecur] [int] NULL,
	[iBatchPosted] [int] NULL,
	[cBatchRef] [varchar](50) NULL,
	[bPromptGlobalChanges] [bit] NULL,
	[dDateBatchCreated] [datetime] NULL,
	[dProcessedDate] [datetime] NULL,
	[_btblCbBatches_dCreatedDate] [datetime] NULL,
	[_btblCbBatches_dModifiedDate] [datetime] NULL,
	[_btblCbBatches_iCreatedAgentID] [int] NULL,
	[_btblCbBatches_iModifiedAgentID] [int] NULL,
	[iStatusID] [int] NULL,
	[cAuditNumber] [varchar](max) NULL,
	[iIncidentTypeID] [int] NULL,
	[iPriorityID] [int] NULL,
	[bAllowEditOnApproval] [bit] NULL,
	[bUseWE] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idBatches] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblCbBatchLines]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblCbBatchLines]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblCbBatchLines](
	[idBatchLines] [int] IDENTITY(1,1) NOT NULL,
	[iBatchesID] [int] NOT NULL,
	[iSplitType] [int] NULL,
	[iSplitGroup] [int] NULL,
	[dTxDate] [smalldatetime] NOT NULL,
	[iModule] [int] NOT NULL,
	[iAccountID] [int] NOT NULL,
	[cDescription] [varchar](100) NULL,
	[cReference] [varchar](50) NULL,
	[fDebit] [float] NULL,
	[fCredit] [float] NULL,
	[bReconcile] [bit] NOT NULL,
	[fTaxAmount] [float] NULL,
	[iTaxTypeID] [int] NULL,
	[iTaxAccountID] [int] NULL,
	[iProjectID] [int] NULL,
	[bPostDated] [bit] NOT NULL,
	[iRepID] [int] NULL,
	[bIsPosted] [bit] NOT NULL,
	[_btblCbBatchLines_dCreatedDate] [datetime] NULL,
	[_btblCbBatchLines_dModifiedDate] [datetime] NULL,
	[_btblCbBatchLines_iCreatedAgentID] [int] NULL,
	[_btblCbBatchLines_iModifiedAgentID] [int] NULL,
	[cAuditNumber] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[idBatchLines] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblCPI]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblCPI]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblCPI](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iYearID] [bigint] NOT NULL,
	[fCPI] [decimal](38, 2) NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastModifiedBy] [bigint] NULL,
	[dDateLastModified] [datetime] NULL,
 CONSTRAINT [PK_dbo._ccg_GL_tblCPI] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblFundingSource]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblFundingSource]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblFundingSource](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[cCode] [varchar](50) NULL,
	[cDescription] [varchar](150) NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastUpdatedBy] [bigint] NULL,
	[dDateLastUpdated] [datetime] NULL
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblJrBatches]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblJrBatches]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblJrBatches](
	[idBatches] [int] NOT NULL,
	[cBatchNo] [varchar](50) NULL,
	[cBatchDesc] [varchar](40) NULL,
	[iInputTaxID] [int] NULL,
	[iInputTaxAccID] [int] NULL,
	[iOutputTaxID] [int] NULL,
	[iOutputTaxAccID] [int] NULL,
	[bCalcTax] [bit] NOT NULL,
	[iTrCodeID] [int] NULL,
	[bClearBatch] [bit] NOT NULL,
	[iDateLineOpt] [int] NULL,
	[dDefDate] [smalldatetime] NULL,
	[iRefLineOpt] [int] NULL,
	[cDefRef] [varchar](20) NULL,
	[iDescLineOpt] [int] NULL,
	[cDefDesc] [varchar](40) NULL,
	[bCheckedOut] [bit] NULL,
	[iMaxRecur] [int] NULL,
	[iBatchPosted] [int] NULL,
	[cBatchRef] [varchar](50) NULL,
	[bPromptGlobalChanges] [bit] NULL,
	[dDateBatchCreated] [datetime] NULL,
	[iAgentBatchCreated] [int] NOT NULL,
	[iAgentCheckedOut] [int] NOT NULL,
	[bAccrualBatch] [bit] NULL,
	[iAccrualDateOpt] [int] NULL,
	[dDefAccrualDay] [int] NULL,
	[iAccrualRefOpt] [int] NULL,
	[cDefAccrualRefPrefixOrSuffix] [varchar](20) NULL,
	[dProcessedDate] [datetime] NULL,
	[bInterBranchBatch] [bit] NOT NULL,
	[iBranchLoanAccountID] [int] NULL,
	[bRevaluationBatch] [bit] NOT NULL,
	[xInputTaxAccAttribute] [xml] NULL,
	[xOutputTaxAccAttribute] [xml] NULL,
	[_btblJrBatches_iBranchID] [int] NULL,
	[_btblJrBatches_dCreatedDate] [datetime] NULL,
	[_btblJrBatches_dModifiedDate] [datetime] NULL,
	[_btblJrBatches_iCreatedBranchID] [int] NULL,
	[_btblJrBatches_iModifiedBranchID] [int] NULL,
	[_btblJrBatches_iCreatedAgentID] [int] NULL,
	[_btblJrBatches_iModifiedAgentID] [int] NULL,
	[_btblJrBatches_iChangeSetID] [int] NULL,
	[_btblJrBatches_Checksum] [binary](20) NULL,
	[imSCOAVerID] [int] NOT NULL,
	[iStatusID] [int] NULL,
	[cAuditNumber] [varchar](max) NULL,
	[cRefNo] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblJrBatchLinesImport]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblJrBatchLinesImport]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblJrBatchLinesImport](
	[idBatchLines] [int] IDENTITY(1,1) NOT NULL,
	[iBatchesID] [int] NULL,
	[dTxDate] [smalldatetime] NULL,
	[iAccountID] [int] NULL,
	[cDescription] [varchar](100) NULL,
	[cReference] [varchar](50) NULL,
	[fDebit] [varchar](100) NULL,
	[fCredit] [varchar](100) NULL,
	[fTaxAmount] [varchar](100) NULL,
	[iTaxTypeID] [int] NULL,
	[iTaxAccountID] [int] NULL,
	[iProjectID] [int] NULL,
	[cProject] [varchar](100) NULL,
	[cAccount] [varchar](100) NULL,
	[cTaxType] [varchar](100) NULL,
	[cTaxAccount] [varchar](100) NULL,
	[iPeriod] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idBatchLines] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblMasterBudget]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblMasterBudget]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblMasterBudget](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iYearID] [bigint] NOT NULL,
	[iBudgetTypeID] [bigint] NOT NULL,
	[iBudgetVersion] [bigint] NOT NULL,
	[cBudgetStatus] [nvarchar](50) NULL,
	[cApprovalStatus] [nvarchar](50) NULL,
	[cCapexBudgetStatus] [nvarchar](50) NULL,
	[cCapexBudgetApprovalStatus] [nvarchar](50) NULL,
	[iApprovals] [int] NOT NULL,
	[iLockID] [bigint] NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastModifiedBy] [bigint] NULL,
	[dDateLastModified] [datetime] NULL,
 CONSTRAINT [PK_dbo._ccg_GL_tblMasterBudget] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblProjectAccounts]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblProjectAccounts]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblProjectAccounts](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iProjectID] [bigint] NULL,
	[iAccountLinkID] [bigint] NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [date] NULL
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblProjectBudgetLine]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblProjectBudgetLine]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblProjectBudgetLine](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iProjectRequestID] [bigint] NULL,
	[iProjectID] [bigint] NULL,
	[iMasterBudgetID] [bigint] NULL,
	[iYearTypeID] [bigint] NULL,
	[fFullYear] [decimal](38, 2) NOT NULL,
	[fJul] [decimal](38, 2) NOT NULL,
	[fAug] [decimal](38, 2) NOT NULL,
	[fSep] [decimal](38, 2) NOT NULL,
	[fOct] [decimal](38, 2) NOT NULL,
	[fNov] [decimal](38, 2) NOT NULL,
	[fDec] [decimal](38, 2) NOT NULL,
	[fJan] [decimal](38, 2) NOT NULL,
	[fFeb] [decimal](38, 2) NOT NULL,
	[fMar] [decimal](38, 2) NOT NULL,
	[fApr] [decimal](38, 2) NOT NULL,
	[fMay] [decimal](38, 2) NOT NULL,
	[fJun] [decimal](38, 2) NOT NULL,
	[cComment] [varchar](max) NULL,
	[bCommentUpdated] [bit] NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastModifiedBy] [bigint] NULL,
	[dDateLastModified] [datetime] NULL,
 CONSTRAINT [PK_dbo._ccg_GL_tblProjectBudgetLine] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblProjectContracts]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblProjectContracts]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblProjectContracts](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iProjectID] [bigint] NULL,
	[iContractID] [bigint] NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblProjectDocuments]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblProjectDocuments]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblProjectDocuments](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iProjectID] [bigint] NOT NULL,
	[cName] [nvarchar](max) NULL,
	[cDescription] [nvarchar](max) NULL,
	[vFileContent] [varbinary](max) NULL,
	[cFileType] [nvarchar](max) NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
 CONSTRAINT [PK_dbo._ccg_GL_tblProjectDocuments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblProjectNotes]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblProjectNotes]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblProjectNotes](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iProjectID] [bigint] NULL,
	[cNotes] [varchar](max) NULL,
	[iCreatedBy] [int] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastUpdatedBy] [bigint] NULL,
	[dDateLastUpdated] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblProjectPhases]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblProjectPhases]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblProjectPhases](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[cPhaseName] [varchar](50) NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblProjectRequests]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblProjectRequests]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblProjectRequests](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iMasterBudgetID] [bigint] NULL,
	[iProjectID] [bigint] NULL,
	[cRequestCode] [varchar](50) NULL,
	[iDepartmentID] [bigint] NULL,
	[cDepartmentReference] [varchar](50) NULL,
	[iCostCentreID] [bigint] NULL,
	[cCode] [varchar](50) NULL,
	[cDescription] [varchar](150) NULL,
	[iAssetTypeID] [bigint] NULL,
	[iProjectTypeID] [bigint] NULL,
	[cMotivation] [varchar](max) NULL,
	[cComment] [varchar](max) NULL,
	[iClientID] [bigint] NULL,
	[iFundingSourceID] [bigint] NULL,
	[cFunderReference] [varchar](50) NULL,
	[dStartDate] [date] NULL,
	[dEndDate] [date] NULL,
	[dCommissionDate] [date] NULL,
	[fTotalBudget] [decimal](38, 2) NULL,
	[cScopeOfWork] [varchar](max) NULL,
	[cEnvironmentalStudy] [varchar](max) NULL,
	[cProjectRisk] [varchar](max) NULL,
	[cStatus] [varchar](50) NOT NULL,
	[iResponsibleUserID] [bigint] NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastUpdatedBy] [bigint] NULL,
	[dDateLastUpdated] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblProjects]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblProjects]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblProjects](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[cProjectNumber] [varchar](50) NULL,
	[iParentProjectID] [bigint] NULL,
	[iMasterBudgetID] [bigint] NULL,
	[iMainProjectID] [bigint] NULL,
	[cCode] [varchar](50) NULL,
	[cTitle] [varchar](100) NULL,
	[dCommissionDate] [date] NULL,
	[dStartDate] [date] NULL,
	[dEndDate] [date] NULL,
	[iDepartmentID] [bigint] NULL,
	[cDepartmentReference] [varchar](100) NULL,
	[iProjectTypeID] [bigint] NULL,
	[iCostCentreID] [bigint] NULL,
	[iAssetTypeID] [bigint] NULL,
	[iFundingSourceID] [bigint] NULL,
	[cFunderReference] [varchar](50) NULL,
	[cBudgetReference] [varchar](50) NULL,
	[fTotalBudget] [decimal](38, 2) NULL,
	[iClientID] [bigint] NULL,
	[cStatus] [varchar](50) NULL,
	[cBudgetBaseline] [varchar](50) NULL,
	[cProjectPhase] [varchar](50) NULL,
	[cNotesAndComments] [varchar](500) NULL,
	[cType] [varchar](50) NULL,
	[iResponsibleUserID] [bigint] NULL,
	[cApprovalStatus] [varchar](50) NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastUpdatedBy] [bigint] NULL,
	[dDateLastUpdated] [datetime] NULL
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblProjectSettings]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblProjectSettings]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblProjectSettings](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iSubProjectLevelLimit] [int] NULL,
	[iApprovalIncidentID] [bigint] NOT NULL,
	[iApprovalIncidentPriorityID] [bigint] NOT NULL,
	[cProjectRequestCodePrefix] [varchar](15) NULL,
	[cProjectRequestCodePostFix] [varchar](15) NULL,
	[cProjectRequestCodePaddingCharacter] [varchar](5) NULL,
	[iProjectRequestCodePaddingNumber] [int] NULL,
	[iProjectRequestCodeCurrentNumber] [bigint] NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastModifiedBy] [bigint] NULL,
	[dDateLastModified] [datetime] NULL,
 CONSTRAINT [PK_dbo._ccg_GL_tblProjectSettings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblProjectTypes]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblProjectTypes]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblProjectTypes](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[cProjectType] [varchar](50) NULL
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblProjectUpdates]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblProjectUpdates]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblProjectUpdates](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iProjectID] [bigint] NOT NULL,
	[cProjectNumber] [varchar](50) NULL,
	[iParentProjectID] [bigint] NULL,
	[cCode] [varchar](50) NULL,
	[cTitle] [varchar](100) NULL,
	[dCommissionDate] [date] NULL,
	[dStartDate] [date] NULL,
	[dEndDate] [date] NULL,
	[iDepartmentID] [bigint] NULL,
	[cDepartmentReference] [varchar](100) NULL,
	[iProjectTypeID] [bigint] NULL,
	[iCostCentreID] [bigint] NULL,
	[iAssetTypeID] [bigint] NULL,
	[iFundingSourceID] [bigint] NULL,
	[cFunderReference] [varchar](50) NULL,
	[cBudgetReference] [varchar](50) NULL,
	[iClientID] [bigint] NULL,
	[cStatus] [varchar](50) NULL,
	[cBudgetBaseline] [varchar](50) NULL,
	[cProjectPhase] [varchar](50) NULL,
	[cNotesAndComments] [varchar](500) NULL,
	[cType] [varchar](50) NULL,
	[iResponsibleUserID] [bigint] NULL,
	[cApprovalStatus] [varchar](50) NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblProjectVirementBatchDetail]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblProjectVirementBatchDetail]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblProjectVirementBatchDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iVirementBatchID] [bigint] NOT NULL,
	[cDescription] [nvarchar](max) NULL,
	[cReference] [nvarchar](max) NULL,
	[iFromProjectID] [bigint] NULL,
	[iFromAccountID] [bigint] NULL,
	[iToProjectID] [bigint] NULL,
	[iToAccountID] [bigint] NULL,
	[iFromPeriodID] [bigint] NULL,
	[iToPeriodID] [bigint] NULL,
	[fAmount] [decimal](18, 2) NOT NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastModifiedBy] [bigint] NULL,
	[dDateLastModified] [datetime] NULL,
	[dVirementDate] [datetime] NULL,
 CONSTRAINT [PK_dbo._ccg_GL_tblProjectVirementBatchDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblProjectVirementBatchHeader]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblProjectVirementBatchHeader]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblProjectVirementBatchHeader](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[cCode] [nvarchar](max) NULL,
	[cDescription] [nvarchar](max) NULL,
	[iYearID] [bigint] NULL,
	[iBudgetTypeID] [bigint] NULL,
	[iBudgetVersionID] [int] NULL,
	[cStatus] [nvarchar](max) NULL,
	[iApprovedBy] [bigint] NULL,
	[dDateApproved] [datetime] NULL,
	[iProcessedBy] [bigint] NULL,
	[dDateProcessed] [datetime] NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastModifiedBy] [bigint] NULL,
	[dDateLastModified] [datetime] NULL,
 CONSTRAINT [PK_dbo._ccg_GL_tblProjectVirementBatchHeader] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblProjectVirementTransactions]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblProjectVirementTransactions]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblProjectVirementTransactions](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iVirementLineID] [bigint] NOT NULL,
	[iProjectID] [bigint] NOT NULL,
	[iAccountLink] [bigint] NOT NULL,
	[iPeriodID] [bigint] NOT NULL,
	[fAmount] [decimal](18, 2) NOT NULL,
	[dVirementDate] [datetime] NULL,
 CONSTRAINT [PK_dbo._ccg_GL_tblProjectVirementTransactions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblResponsibilityBudgetApprovalWorkflow]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblResponsibilityBudgetApprovalWorkflow]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblResponsibilityBudgetApprovalWorkflow](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iResponsibiltyID] [bigint] NULL,
	[iApprovalIncidentID] [bigint] NULL,
	[iApprovalIncidentPriorityID] [bigint] NULL,
	[iModuleID] [bigint] NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastUpdatedBy] [bigint] NULL,
	[dDateLastUpdated] [datetime] NULL
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblVirementAccountTypes]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblVirementAccountTypes]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblVirementAccountTypes](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iAccountTypeID] [bigint] NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblVirementBatchDetail]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblVirementBatchDetail]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblVirementBatchDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iVirementBatchID] [bigint] NOT NULL,
	[cDescription] [nvarchar](max) NULL,
	[cReference] [nvarchar](max) NULL,
	[iFromAccountID] [bigint] NULL,
	[iToAccountID] [bigint] NULL,
	[iFromPeriodID] [bigint] NULL,
	[iToPeriodID] [bigint] NULL,
	[fAmount] [decimal](18, 2) NOT NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastModifiedBy] [bigint] NULL,
	[dDateLastModified] [datetime] NULL,
	[dVirementDate] [datetime] NULL,
 CONSTRAINT [PK_dbo._ccg_GL_tblVirementBatchDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblVirementBatchHeader]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblVirementBatchHeader]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblVirementBatchHeader](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[cCode] [nvarchar](max) NULL,
	[cDescription] [nvarchar](max) NULL,
	[iYearID] [bigint] NULL,
	[iBudgetTypeID] [bigint] NULL,
	[iBudgetVersionID] [int] NULL,
	[cStatus] [nvarchar](max) NULL,
	[iApprovedBy] [bigint] NULL,
	[dDateApproved] [datetime] NULL,
	[iProcessedBy] [bigint] NULL,
	[dDateProcessed] [datetime] NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastModifiedBy] [bigint] NULL,
	[dDateLastModified] [datetime] NULL,
 CONSTRAINT [PK_dbo._ccg_GL_tblVirementBatchHeader] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblVirementSettings]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblVirementSettings]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblVirementSettings](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iMaximumPercentage] [int] NOT NULL,
	[bIncludeCommitments] [bit] NOT NULL,
	[bAllowVirementsBetweenCostCentres] [bit] NOT NULL,
	[bAllowVirementsBetweenProjectTypes] [bit] NOT NULL,
	[bAllowVirementsToAccountsWithoutBudgets] [bit] NOT NULL,
	[bAllowVirementsBetweenProjects] [bit] NULL,
	[iApprovalIncidentID] [bigint] NOT NULL,
	[iApprovalIncidentPriorityID] [bigint] NOT NULL,
	[iModuleID] [bigint] NOT NULL,
	[bRestrictAccountAccess] [bit] NULL,
	[cVirementCodePrefix] [varchar](15) NULL,
	[cVirementCodePostfix] [varchar](15) NULL,
	[cVirementCodePaddingCharacter] [varchar](5) NULL,
	[iVirementCodePaddingNumber] [int] NULL,
	[iVirementCodeCurrentNumber] [bigint] NULL,
	[iCreatedBy] [bigint] NULL,
	[dDateCreated] [datetime] NULL,
	[iLastModifiedBy] [bigint] NULL,
	[dDateLastModified] [datetime] NULL,
 CONSTRAINT [PK_dbo._ccg_GL_tblVirementSettings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_GL_tblVirementTransactions]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_GL_tblVirementTransactions]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_GL_tblVirementTransactions](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iVirementLineID] [bigint] NOT NULL,
	[iAccountLink] [bigint] NOT NULL,
	[iPeriodID] [bigint] NOT NULL,
	[fAmount] [decimal](18, 2) NOT NULL,
	[dVirementDate] [datetime] NULL,
 CONSTRAINT [PK_dbo._ccg_GL_tblVirementTransactions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_tblErrorLog]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_tblErrorLog]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_tblErrorLog](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Module] [nvarchar](50) NULL,
	[Action] [nvarchar](150) NULL,
	[Data] [nvarchar](max) NULL,
	[Exception] [nvarchar](max) NULL,
	[InnerException] [nvarchar](max) NULL,
	[InnerInnerException] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_dbo._ccg_tblErrorLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO
/****** Object:  Table [dbo].[_ccg_tblModules]    Script Date: 19/07/2024 08:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_tblModules]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_tblModules](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Name] [varchar](250) NULL,
	[Description] [varchar](max) NULL,
	[GUID] [uniqueidentifier] NULL,
	[Active] [bit] NULL,
	[Version] [float] NULL,
	[DevelopedBy] [varchar](max) NULL,
	[ReleaseDate] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
End
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Table [dbo].[_ccg_WE_tblIncident]    Script Date: 24/07/2024 14:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_WE_tblIncident]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_WE_tblIncident](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[iIncidentTypeGroupID] [int] NOT NULL,
	[iIncidentTypeID] [int] NOT NULL,
	[iActionID] [int] NULL,
	[iWorkflowID] [int] NULL,
	[iWorkflowStepID] [bigint] NULL,
	[cModuleGUID] [uniqueidentifier] NULL,
	[cReference] [varchar](max) NOT NULL,
	[cOurRef] [varchar](50) NULL,
	[cYourRef] [varchar](50) NULL,
	[cOutline] [varchar](max) NULL,
	[iPriorityID] [int] NOT NULL,
	[iEscalationID] [int] NOT NULL,
	[iStatusID] [int] NOT NULL,
	[iCurrentUserID] [int] NOT NULL,
	[iDebtorID] [int] NOT NULL,
	[iSupplierID] [int] NULL,
	[dDueDate] [datetime] NULL,
	[dCreationDate] [datetime] NOT NULL,
	[dLastUpdatedDate] [datetime] NULL,
	[iCreatedUserID] [int] NOT NULL,
	[iModifiedUserID] [int] NULL,
	[iExternalUserID] [int] NULL,
	[cDescription] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[_ccg_WE_tblIncidentType]    Script Date: 24/07/2024 14:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_WE_tblIncidentType]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_WE_tblIncidentType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[cIncidentTypeDescription] [varchar](250) NOT NULL,
	[cTypeOutline] [varchar](100) NULL,
	[iGroupID] [int] NOT NULL,
	[iIncidentWorkflowID] [int] NULL,
	[iIncidentEscalationID] [int] NULL,
	[bIsActive] [bit] NULL,
	[bAllowTypeOverride] [bit] NULL,
	[bAllowEscalationOverride] [bit] NULL,
	[bIsRoleDriven] [bit] NULL,
	[cModuleGUID] [uniqueidentifier] NULL,
	[dCreationDate] [date] NOT NULL,
	[dLastUpdatedDate] [date] NULL,
	[iCreatedUserID] [int] NOT NULL,
	[iModifiedUserID] [int] NULL,
	[bIgnoreHoliday] [bit] NULL,
	[iDepartmentID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[_ccg_WE_tblPriority]    Script Date: 24/07/2024 14:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_WE_tblPriority]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_WE_tblPriority](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[cPriorityDescription] [varchar](100) NOT NULL,
	[bIsDefault] [bit] NULL,
	[cPriorityColor] [varchar](max) NULL,
	[dCreationDate] [date] NOT NULL,
	[dLastUpdatedDate] [date] NULL,
	[iPriorityDuration] [int] NOT NULL,
	[iPriorityDurationType] [int] NOT NULL,
	[iCreatedUserID] [int] NOT NULL,
	[iModifiedUserID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[_ccg_WE_tblStatus]    Script Date: 24/07/2024 14:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[_ccg_WE_tblStatus]') 
    AND type in (N'U')
)
BEGIN
CREATE TABLE [dbo].[_ccg_WE_tblStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[cStatusCode] [varchar](100) NOT NULL,
	[cStatusDescription] [varchar](100) NOT NULL,
	[dCreationDate] [date] NOT NULL,
	[dLastUpdatedDate] [date] NULL,
	[iCreatedUserID] [int] NOT NULL,
	[iModifiedUserID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO


-- Check if the column 'iStatusID' exists, if not, add it
IF NOT EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = '_btblJrBatches'
    AND COLUMN_NAME = 'iStatusID'
)
BEGIN
    ALTER TABLE dbo._btblJrBatches
    ADD iStatusID INT;
END;

-- Check if the column 'iPriorityID' exists, if not, add it
IF NOT EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = '_btblJrBatches'
    AND COLUMN_NAME = 'iPriorityID'
)
BEGIN
    ALTER TABLE dbo._btblJrBatches
    ADD iPriorityID INT;
END;

-- Check if the column 'iIncidentTypeID' exists, if not, add it
IF NOT EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = '_btblJrBatches'
    AND COLUMN_NAME = 'iIncidentTypeID'
)
BEGIN
    ALTER TABLE dbo._btblJrBatches
    ADD iIncidentTypeID INT;
END;


-- Check if the column 'iStatusID' exists, if not, add it
IF NOT EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = '_btblCbBatches'
    AND COLUMN_NAME = 'iStatusID'
)
BEGIN
    ALTER TABLE dbo._btblCbBatches
    ADD iStatusID INT;
END;

-- Check if the column 'iPriorityID' exists, if not, add it
IF NOT EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = '_btblCbBatches'
    AND COLUMN_NAME = 'iPriorityID'
)
BEGIN
    ALTER TABLE dbo._btblCbBatches
    ADD iPriorityID INT;
END;

-- Check if the column 'iIncidentTypeID' exists, if not, add it
IF NOT EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = '_btblCbBatches'
    AND COLUMN_NAME = 'iIncidentTypeID'
)
BEGIN
    ALTER TABLE dbo._btblCbBatches
    ADD iIncidentTypeID INT;
END;

IF NOT EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = '_btblCbBatches'
    AND COLUMN_NAME = 'bAllowEditOnApproval'
)
BEGIN
    ALTER TABLE dbo._btblCbBatches
    ADD bAllowEditOnApproval BIT;
END;

-- Check if the column 'bUseWE' exists, if not, add it
IF NOT EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = '_btblCbBatches'
    AND COLUMN_NAME = 'bUseWE'
)
BEGIN
    ALTER TABLE dbo._btblCbBatches
    ADD bUseWE BIT;
END;

-- Check if the column 'iAPTrCodeID' exists, if not, add it
IF NOT EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = '_btblCbBatchDefs'
    AND COLUMN_NAME = 'iAPTrCodeID'
)
BEGIN
    ALTER TABLE dbo._btblCbBatchDefs
    ADD iAPTrCodeID INT;
END;

-- Check if the column 'iARTrCodeID' exists, if not, add it
IF NOT EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = '_btblCbBatchDefs'
    AND COLUMN_NAME = 'iARTrCodeID'
)
BEGIN
    ALTER TABLE dbo._btblCbBatchDefs
    ADD iARTrCodeID INT;
END;

-- Check if the column 'iPriorityID' exists, if not, add it
IF NOT EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = '_btblJrBatchDefs'
    AND COLUMN_NAME = 'iPriorityID'
)
BEGIN
    ALTER TABLE dbo._btblJrBatchDefs
    ADD iPriorityID INT;
END;

-- Check if the column 'iIncidentTypeID' exists, if not, add it
IF NOT EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = '_btblJrBatchDefs'
    AND COLUMN_NAME = 'iIncidentTypeID'
)
BEGIN
    ALTER TABLE dbo._btblJrBatchDefs
    ADD iIncidentTypeID INT;
END;

-- Check if the column 'iCBPriorityID' exists, if not, add it
IF NOT EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = '_btblJrBatchDefs'
    AND COLUMN_NAME = 'iCBPriorityID'
)
BEGIN
    ALTER TABLE dbo._btblJrBatchDefs
    ADD iCBPriorityID INT;
END;

-- Check if the column 'iCBIncidentTypeID' exists, if not, add it
IF NOT EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = '_btblJrBatchDefs'
    AND COLUMN_NAME = 'iCBIncidentTypeID'
)
BEGIN
    ALTER TABLE dbo._btblJrBatchDefs
    ADD iCBIncidentTypeID INT;
END;
