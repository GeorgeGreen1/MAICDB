USE MAIC
CREATE TABLE [dbo].[Participants](
	[Particip_Key] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [varchar](100) NOT NULL,
	[Last_Name] [varchar](100) NOT NULL,
	[Age] [int] NOT NULL,
	[Gender] [int] NOT NULL,
	[Race] [int] NOT NULL,
	[Tribe1] [varchar](255) NULL,
	[Tribe2] [varchar](255) NULL,
	[Tribe3] [varchar](255) NULL,
	CONSTRAINT [Tribe_Affiliation] CHECK (([Tribe1] IS NOT NULL OR [Race]<>(1)))
)