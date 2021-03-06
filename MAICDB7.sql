-- Replace the type of tribes in Participants with INTs instead of VARCHARs, re-add constraint
ALTER TABLE [dbo].[Participants] DROP CONSTRAINT Tribe_Affiliation;

ALTER TABLE [dbo].[Participants]
DROP COLUMN Tribe1;

ALTER TABLE [dbo].[Participants]
DROP COLUMN Tribe2;

ALTER TABLE [dbo].[Participants]
DROP COLUMN Tribe3;

ALTER TABLE [dbo].[Participants]
ADD Tribe1 INT;

ALTER TABLE [dbo].[Participants]
ADD Tribe2 INT;

ALTER TABLE [dbo].[Participants]
ADD Tribe3 INT;

ALTER TABLE [dbo].[Participants] ADD CONSTRAINT [Tribe_Affiliation] CHECK (([Tribe1] IS NOT NULL OR [Race]<>(1)));
