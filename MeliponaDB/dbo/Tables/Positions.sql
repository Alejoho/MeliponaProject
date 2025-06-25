CREATE TABLE [dbo].[Positions]
(
  [Id] INT NOT NULL PRIMARY KEY IDENTITY,
  [BeeHiveId] INT NOT NULL,
  [PositionNumber] INT NOT NULL,
  [PlacementDate] DATE NOT NULL,
  [RemoveDate] DATE,
  CONSTRAINT FK_Positions_BeeHives_Id FOREIGN KEY (BeeHiveId) REFERENCES [dbo].[BeeHives](Id),
  CONSTRAINT CHK_Positions_Dates CHECK (RemoveDate IS NULL OR RemoveDate >= PlacementDate)
)
