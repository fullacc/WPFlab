CREATE TABLE [dbo].[Table1]
(
	[Id] INT IDENTITY (1, 1) NOT NULL,
	[Name]      NVARCHAR (128) NOT NULL,
    [LastName]  NVARCHAR (128) NULL,
    [Email]     NVARCHAR (128) NOT NULL,
    [City]      NVARCHAR (128) NOT NULL,
    [BirthDate] DATETIME       NOT NULL,
	[Gender]    CHAR NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
)
