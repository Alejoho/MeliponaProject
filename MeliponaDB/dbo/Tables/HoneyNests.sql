CREATE TABLE [dbo].[HoneyNests]
(
  [Id] INT NOT NULL PRIMARY KEY,
  [BeeHiveId] INT NOT NULL,
  [HoneyNestNumber] INT NOT NULL,
  [PlacementDate] DATE NOT NULL,
  [HarvestDate] DATE,
  [HarvestedAmount] FLOAT,
  [EmptyAtPlacement] BIT DEFAULT 0,
  CONSTRAINT FK_HoneyNests_BeeHives_Id FOREIGN KEY (BeeHiveId) REFERENCES [dbo].[BeeHives](Id)
)
