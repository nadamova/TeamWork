

CREATE DATABASE MoviesDatabaseOfTeamSingaporeSling
GO

USE [MoviesDatabaseOfTeamSingaporeSling]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 26.10.2016 г. 20:07:48 ******/
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
	[Directors_Id] [int] NULL,
 CONSTRAINT [PK_Cast] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Genres]    Script Date: 26.10.2016 г. 20:07:48 ******/
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
/****** Object:  Table [dbo].[Movies]    Script Date: 26.10.2016 г. 20:07:48 ******/
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
/****** Object:  Table [dbo].[Movies_Employees]    Script Date: 26.10.2016 г. 20:07:48 ******/
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
/****** Object:  Table [dbo].[Movies_Genres]    Script Date: 26.10.2016 г. 20:07:48 ******/
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




ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([Directors_Id])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Employees]
GO
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
