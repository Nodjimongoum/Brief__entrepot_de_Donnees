USE [Dataw]
GO
/****** Object:  Table [dbo].[client]    Script Date: 13/06/2022 2:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client](
	[code_client] [int] NOT NULL,
	[nom] [varchar](100) NULL,
	[age] [int] NULL,
	[nbre_enfant] [int] NULL,
	[ville] [varchar](100) NULL,
	[pays] [varchar](100) NULL,
	[revenue] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[code_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[compagnie]    Script Date: 13/06/2022 2:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compagnie](
	[code_compagnie] [int] NOT NULL,
	[nom] [varchar](100) NULL,
	[pays] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[code_compagnie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datev]    Script Date: 13/06/2022 2:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datev](
	[code_date] [int] NOT NULL,
	[jour] [varchar](100) NULL,
	[mois] [varchar](100) NULL,
	[annee] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[destination]    Script Date: 13/06/2022 2:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destination](
	[code_dest] [int] NOT NULL,
	[hotel] [varchar](100) NULL,
	[ville] [varchar](100) NULL,
	[pays] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[code_dest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voyage]    Script Date: 13/06/2022 2:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voyage](
	[montant] [int] NULL,
	[nbre_jour] [int] NULL,
	[code_dest] [int] NULL,
	[code_date] [int] NULL,
	[code_compagnie] [int] NULL,
	[code_client] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[voyage]  WITH CHECK ADD FOREIGN KEY([code_client])
REFERENCES [dbo].[client] ([code_client])
GO
ALTER TABLE [dbo].[voyage]  WITH CHECK ADD FOREIGN KEY([code_compagnie])
REFERENCES [dbo].[compagnie] ([code_compagnie])
GO
ALTER TABLE [dbo].[voyage]  WITH CHECK ADD FOREIGN KEY([code_date])
REFERENCES [dbo].[datev] ([code_date])
GO
ALTER TABLE [dbo].[voyage]  WITH CHECK ADD FOREIGN KEY([code_dest])
REFERENCES [dbo].[destination] ([code_dest])
GO
