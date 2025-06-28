CREATE TABLE [dbo].[Nests]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[BeeHiveId] INT NOT NULL, 
    [NestNumber] INT NOT NULL, 
    [PlacementDate] DATE NOT NULL, 
    [EmptyAtPlacement] BIT NOT NULL DEFAULT 1, 
    CONSTRAINT [FK_Nests_BeeHives] FOREIGN KEY ([BeeHiveId]) REFERENCES [BeeHives]([Id]),
)
