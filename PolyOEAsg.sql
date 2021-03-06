USE [PolyOEAsg]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 4/30/2022 10:04:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[FavoriteId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](30) NULL,
	[VideoId] [varchar](50) NULL,
	[LikedDate] [date] NULL,
 CONSTRAINT [PK_Favorites] PRIMARY KEY CLUSTERED 
(
	[FavoriteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shares]    Script Date: 4/30/2022 10:04:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shares](
	[SharaId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](30) NULL,
	[VideoId] [varchar](50) NULL,
	[Emails] [nvarchar](250) NULL,
	[ShareDate] [date] NULL,
 CONSTRAINT [PK_Shares] PRIMARY KEY CLUSTERED 
(
	[SharaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/30/2022 10:04:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Username] [varchar](30) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Admin] [bit] NOT NULL,
	[Password] [varchar](20) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Videos]    Script Date: 4/30/2022 10:04:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Videos](
	[VideoId] [varchar](50) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Poster] [nvarchar](150) NOT NULL,
	[Views] [int] NOT NULL,
	[Description] [nvarchar](1500) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Videos] PRIMARY KEY CLUSTERED 
(
	[VideoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Favorites] ON 

INSERT [dbo].[Favorites] ([FavoriteId], [Username], [VideoId], [LikedDate]) VALUES (1, N'lamnt', N'V01', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[Favorites] ([FavoriteId], [Username], [VideoId], [LikedDate]) VALUES (2, N'lamnt', N'V02', CAST(N'2022-02-01' AS Date))
SET IDENTITY_INSERT [dbo].[Favorites] OFF
GO
SET IDENTITY_INSERT [dbo].[Shares] ON 

INSERT [dbo].[Shares] ([SharaId], [Username], [VideoId], [Emails], [ShareDate]) VALUES (1, N'Lamnt', N'V01', N'lamntpd05350@fpt.edu.vn', CAST(N'2022-04-04' AS Date))
INSERT [dbo].[Shares] ([SharaId], [Username], [VideoId], [Emails], [ShareDate]) VALUES (2, N'teonv', N'ID02', N'lamntpd05350@fpt.edu.vn', CAST(N'2022-04-18' AS Date))
SET IDENTITY_INSERT [dbo].[Shares] OFF
GO
INSERT [dbo].[Users] ([Username], [Fullname], [Email], [Admin], [Password]) VALUES (N'HuyD', N'Nguyen Dinh Huy', N'Huy1234@gmail.com', 0, N'1234')
INSERT [dbo].[Users] ([Username], [Fullname], [Email], [Admin], [Password]) VALUES (N'lamnt', N'Nguyen Trung Lam 456789', N'lamntpd05350@fpt.edu.vn', 1, N'123')
INSERT [dbo].[Users] ([Username], [Fullname], [Email], [Admin], [Password]) VALUES (N'nam', N'Nguyen Son Hai Nam1', N'namnv@fpt.edu.vn', 0, N'456')
INSERT [dbo].[Users] ([Username], [Fullname], [Email], [Admin], [Password]) VALUES (N'teonv', N'Tran Quoc Nghia', N'nghiatq123@fpt.edu.vn', 0, N'123')
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'ID02', N'Thu Thach 24h ngu duoi ngam ban', N'uploads/', 25, N'Description', 1)
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'ID03', N'JAVA 6', N'uploads/ID03.jpg', 12, N'Description', 1)
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'ID05', N'Java 6', N'uploads/', 29, N'Description', 1)
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'ID06', N'Java 9', N'uploads/ID06.png', 12, N'Description', 1)
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'V01', N'Java 24', N'uploads/', 1, N'Description', 1)
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'V02', N'PHP', N'uploads/', 20, N'', 1)
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'V03', N'Java 86', N'uploads/', 23, N'Description', 1)
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Users1] FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Users1]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Videos] FOREIGN KEY([VideoId])
REFERENCES [dbo].[Videos] ([VideoId])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Videos]
GO
ALTER TABLE [dbo].[Shares]  WITH CHECK ADD  CONSTRAINT [FK_Shares_Users1] FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Shares] CHECK CONSTRAINT [FK_Shares_Users1]
GO
ALTER TABLE [dbo].[Shares]  WITH CHECK ADD  CONSTRAINT [FK_Shares_Videos1] FOREIGN KEY([VideoId])
REFERENCES [dbo].[Videos] ([VideoId])
GO
ALTER TABLE [dbo].[Shares] CHECK CONSTRAINT [FK_Shares_Videos1]
GO
