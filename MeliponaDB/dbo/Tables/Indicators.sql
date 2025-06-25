CREATE TABLE [dbo].[Indicators]
(
  [Id] INT NOT NULL PRIMARY KEY,
  [BeeHiveId] INT NOT NULL,
  [Weight] FLOAT NOT NULL,
  [MeasureDate] DATE NOT NULL,
  CONSTRAINT FK_Indicators_BeeHives_Id FOREIGN KEY (BeeHiveId) REFERENCES [dbo].[BeeHives](Id)
)
