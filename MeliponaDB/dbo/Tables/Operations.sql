CREATE TABLE [dbo].[Operations]
(
  [Id] INT NOT NULL PRIMARY KEY,
  [BeeHiveId] INT NOT NULL,
  [Date] DATE NOT NULL,
  [Description] NVARCHAR(500) NOT NULL,
  CONSTRAINT FK_Operations_BeeHives_Id FOREIGN KEY (BeeHiveId) REFERENCES [dbo].[BeeHives](Id)
)
