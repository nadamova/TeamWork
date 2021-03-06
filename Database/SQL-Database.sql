---------------------------------------------------------------------------------------
-- This script will create a sample database "MoviesDatabaseOfTeamSingaporeSling" in --
-- MS SQL Server and will populate sample data in its tables.                        --
---------------------------------------------------------------------------------------

CREATE DATABASE MoviesDatabaseOfTeamSingaporeSling
GO

USE [MoviesDatabaseOfTeamSingaporeSling]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 27.10.2016 г. 0:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[MiddleName] [nvarchar](20) NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[Age] [int] NULL,
	[Salary] [money] NULL,
	[IsDirector] [bit] NULL,
 CONSTRAINT [PK_Cast] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Genres]    Script Date: 27.10.2016 г. 0:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Movies]    Script Date: 27.10.2016 г. 0:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Duration] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Rating] [float] NOT NULL,
	[Year] [datetime] NOT NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Movies_Employees]    Script Date: 27.10.2016 г. 0:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies_Employees](
	[Movie_Id] [int] NOT NULL,
	[Employee_Id] [int] NOT NULL,
 CONSTRAINT [PK_Movies_Employees] PRIMARY KEY CLUSTERED 
(
	[Movie_Id] ASC,
	[Employee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Movies_Genres]    Script Date: 27.10.2016 г. 0:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies_Genres](
	[Movie_Id] [int] NOT NULL,
	[Genre_Id] [int] NOT NULL,
 CONSTRAINT [PK_Movies_Genre] PRIMARY KEY CLUSTERED 
(
	[Movie_Id] ASC,
	[Genre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [FirstName], [MiddleName], [LastName], [Age], [Salary], [IsDirector]) VALUES (1, N'Michael', NULL, N'Fassbender', 39, 150000.0000, 0)
INSERT [dbo].[Employees] ([Id], [FirstName], [MiddleName], [LastName], [Age], [Salary], [IsDirector]) VALUES (2, N'Marion', NULL, N'Cotillard', 41, 100000.0000, 0)
INSERT [dbo].[Employees] ([Id], [FirstName], [MiddleName], [LastName], [Age], [Salary], [IsDirector]) VALUES (3, N'Michael', N'Kenneth', N'Williams', 50, 35000.0000, 0)
INSERT [dbo].[Employees] ([Id], [FirstName], [MiddleName], [LastName], [Age], [Salary], [IsDirector]) VALUES (4, N'Justin', NULL, N'Kurzel', 42, 5000000.0000, 1)
INSERT [dbo].[Employees] ([Id], [FirstName], [MiddleName], [LastName], [Age], [Salary], [IsDirector]) VALUES (5, N'Tom', N'Jeffrey', N'Hanks', 60, 500000.0000, 0)
INSERT [dbo].[Employees] ([Id], [FirstName], [MiddleName], [LastName], [Age], [Salary], [IsDirector]) VALUES (6, N'Ayelet', NULL, N'Zurer', 47, 20000.0000, 0)
INSERT [dbo].[Employees] ([Id], [FirstName], [MiddleName], [LastName], [Age], [Salary], [IsDirector]) VALUES (7, N'Ron', NULL, N'Howard', 62, 3000000.0000, 1)
INSERT [dbo].[Employees] ([Id], [FirstName], [MiddleName], [LastName], [Age], [Salary], [IsDirector]) VALUES (8, N'Clive', NULL, N'Oppenheimer', NULL, 15000.0000, 0)
INSERT [dbo].[Employees] ([Id], [FirstName], [MiddleName], [LastName], [Age], [Salary], [IsDirector]) VALUES (9, N'Wernen', NULL, N'Herzog', 76, 150000.0000, 1)
INSERT [dbo].[Employees] ([Id], [FirstName], [MiddleName], [LastName], [Age], [Salary], [IsDirector]) VALUES (10, N'Michael', NULL, N'Shannon', 42, 26000.0000, 0)
INSERT [dbo].[Employees] ([Id], [FirstName], [MiddleName], [LastName], [Age], [Salary], [IsDirector]) VALUES (11, N'Felicity', N'Hadley', N'Jones', 32, 180000.0000, 0)
INSERT [dbo].[Employees] ([Id], [FirstName], [MiddleName], [LastName], [Age], [Salary], [IsDirector]) VALUES (12, N'Catherine', N'Zita', N'Jones', 47, 100000.0000, 0)
INSERT [dbo].[Employees] ([Id], [FirstName], [MiddleName], [LastName], [Age], [Salary], [IsDirector]) VALUES (13, N'Steven', NULL, N'Spielberg', 69, 7500000.0000, 1)
INSERT [dbo].[Employees] ([Id], [FirstName], [MiddleName], [LastName], [Age], [Salary], [IsDirector]) VALUES (14, N'Robert', NULL, N'Zemeckis', 64, 3000000.0000, 1)
INSERT [dbo].[Employees] ([Id], [FirstName], [MiddleName], [LastName], [Age], [Salary], [IsDirector]) VALUES (15, N'Lari', NULL, N'White', 51, 14000.0000, 0)
INSERT [dbo].[Employees] ([Id], [FirstName], [MiddleName], [LastName], [Age], [Salary], [IsDirector]) VALUES (16, N'Paul', NULL, N'Greengrass', 61, 300000.0000, 1)
INSERT [dbo].[Employees] ([Id], [FirstName], [MiddleName], [LastName], [Age], [Salary], [IsDirector]) VALUES (17, N'Audrey', N'Justine', N'Tautou', 40, 430000.0000, 0)
SET IDENTITY_INSERT [dbo].[Employees] OFF
SET IDENTITY_INSERT [dbo].[Genres] ON 

INSERT [dbo].[Genres] ([Id], [Name]) VALUES (1, N'Action')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (2, N'Adventure')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (3, N'Comedy')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (4, N'Crime')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (5, N'Drama')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (6, N'Fantasy')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (7, N'Horror')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (8, N'Mystery')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (9, N'Romance')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (10, N'Thriller')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (11, N'Western')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (12, N'Documentary')
SET IDENTITY_INSERT [dbo].[Genres] OFF
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([Id], [Name], [Duration], [Description], [Rating], [Year]) VALUES (1, N'Assassin''s Creed', N'2 h 22 min', N'When Callum Lynch explores the memories of his ancestor Aguilar and gains the skills of a Master Assassin, he discovers he is a descendant of the secret Assassins society. ', 6.3, CAST(N'2016-12-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [Description], [Rating], [Year]) VALUES (2, N'Into the Inferno', N'1 h 44 min', N'An exploration of active volcanoes around world. ', 8, CAST(N'2016-10-28 00:00:00.000' AS DateTime))
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [Description], [Rating], [Year]) VALUES (3, N'Salt and Fire', N'1 h 38 min', N'A scientist blames the head of a large company for an ecological disaster in South America. But when a volcano begins to show signs of erupting, they must unite to avoid a disaster. ', 4.9, CAST(N'2016-11-17 00:00:00.000' AS DateTime))
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [Description], [Rating], [Year]) VALUES (4, N'Inferno', N'2 h 1 min', N'When Robert Langdon wakes up in an Italian hospital with amnesia, he teams up with Dr. Sienna Brooks, and together they must race across Europe against the clock to foil a deadly global plot. ', 6.5, CAST(N'2016-10-28 00:00:00.000' AS DateTime))
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [Description], [Rating], [Year]) VALUES (5, N'Angels & Demons', N'2 h 18 min', N'Harvard symbologist Robert Langdon works to solve a murder and prevent a terrorist act against the Vatican.', 6.7, CAST(N'2009-05-15 00:00:00.000' AS DateTime))
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [Description], [Rating], [Year]) VALUES (6, N'The Terminal', N'2 h 8 min ', N'An eastern immigrant finds himself stranded in JFK airport, and must take up temporary residence there. ', 7.3, CAST(N'2004-06-18 00:00:00.000' AS DateTime))
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [Description], [Rating], [Year]) VALUES (8, N'Cast Away', N'2 h 23 min', N'
A FedEx executive must transform himself physically and emotionally to survive a crash landing on a deserted island. ', 7.7, CAST(N'2000-12-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [Description], [Rating], [Year]) VALUES (9, N'Captain Phillips', N'2 h 14 min', N'The true story of Captain Richard Phillips and the 2009 hijacking by Somali pirates of the US-flagged MV Maersk Alabama, the first American cargo ship to be hijacked in two hundred years. ', 7.9, CAST(N'2013-10-11 00:00:00.000' AS DateTime))
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [Description], [Rating], [Year]) VALUES (10, N'The Da Vinci Code', N'2 h 29 min', N'A murder inside the Louvre and clues in Da Vinci paintings lead to the discovery of a religious mystery protected by a secret society for two thousand years -- which could shake the foundations of Christianity. ', 6.6, CAST(N'2006-05-19 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Movies] OFF
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (1, 1)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (1, 2)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (1, 3)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (1, 4)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (2, 8)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (2, 9)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (3, 9)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (3, 10)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (4, 5)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (4, 7)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (4, 11)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (5, 5)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (5, 6)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (5, 7)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (6, 5)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (6, 12)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (6, 13)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (8, 5)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (8, 14)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (8, 15)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (9, 5)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (9, 16)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (10, 5)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (10, 7)
INSERT [dbo].[Movies_Employees] ([Movie_Id], [Employee_Id]) VALUES (10, 17)
INSERT [dbo].[Movies_Genres] ([Movie_Id], [Genre_Id]) VALUES (1, 1)
INSERT [dbo].[Movies_Genres] ([Movie_Id], [Genre_Id]) VALUES (1, 2)
INSERT [dbo].[Movies_Genres] ([Movie_Id], [Genre_Id]) VALUES (1, 6)
INSERT [dbo].[Movies_Genres] ([Movie_Id], [Genre_Id]) VALUES (2, 12)
INSERT [dbo].[Movies_Genres] ([Movie_Id], [Genre_Id]) VALUES (3, 10)
INSERT [dbo].[Movies_Genres] ([Movie_Id], [Genre_Id]) VALUES (4, 1)
INSERT [dbo].[Movies_Genres] ([Movie_Id], [Genre_Id]) VALUES (4, 2)
INSERT [dbo].[Movies_Genres] ([Movie_Id], [Genre_Id]) VALUES (4, 4)
INSERT [dbo].[Movies_Genres] ([Movie_Id], [Genre_Id]) VALUES (5, 8)
INSERT [dbo].[Movies_Genres] ([Movie_Id], [Genre_Id]) VALUES (5, 10)
INSERT [dbo].[Movies_Genres] ([Movie_Id], [Genre_Id]) VALUES (6, 3)
INSERT [dbo].[Movies_Genres] ([Movie_Id], [Genre_Id]) VALUES (6, 5)
INSERT [dbo].[Movies_Genres] ([Movie_Id], [Genre_Id]) VALUES (8, 2)
INSERT [dbo].[Movies_Genres] ([Movie_Id], [Genre_Id]) VALUES (8, 5)
INSERT [dbo].[Movies_Genres] ([Movie_Id], [Genre_Id]) VALUES (8, 9)
INSERT [dbo].[Movies_Genres] ([Movie_Id], [Genre_Id]) VALUES (9, 8)
INSERT [dbo].[Movies_Genres] ([Movie_Id], [Genre_Id]) VALUES (9, 10)
INSERT [dbo].[Movies_Genres] ([Movie_Id], [Genre_Id]) VALUES (10, 5)
INSERT [dbo].[Movies_Genres] ([Movie_Id], [Genre_Id]) VALUES (10, 10)
ALTER TABLE [dbo].[Movies_Employees]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Employees_Employees] FOREIGN KEY([Employee_Id])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[Movies_Employees] CHECK CONSTRAINT [FK_Movies_Employees_Employees]
GO
ALTER TABLE [dbo].[Movies_Employees]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Employees_Movies] FOREIGN KEY([Movie_Id])
REFERENCES [dbo].[Movies] ([Id])
GO
ALTER TABLE [dbo].[Movies_Employees] CHECK CONSTRAINT [FK_Movies_Employees_Movies]
GO
ALTER TABLE [dbo].[Movies_Genres]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Genres_Genres] FOREIGN KEY([Genre_Id])
REFERENCES [dbo].[Genres] ([Id])
GO
ALTER TABLE [dbo].[Movies_Genres] CHECK CONSTRAINT [FK_Movies_Genres_Genres]
GO
ALTER TABLE [dbo].[Movies_Genres]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Genres_Movies] FOREIGN KEY([Movie_Id])
REFERENCES [dbo].[Movies] ([Id])
GO
ALTER TABLE [dbo].[Movies_Genres] CHECK CONSTRAINT [FK_Movies_Genres_Movies]
GO
