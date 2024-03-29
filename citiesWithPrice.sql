USE [ecomm]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 11/15/2021 3:20:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Zone] [nvarchar](max) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-00db-08d978082205', N'Galgamuwa', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-0343-08d978065aa7', N'Ehaliyagoda', N'D', CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-0721-08d97804488a', N'Colombo-09', N'A', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-088d-08d978077cc4', N'Anuradhapura', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-0a93-08d9780801ff', N'Mahiyanganay', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-0c24-08d978085e87', N'Neluwa', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-0ee9-08d97807b938', N'Pollannaruwa', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-0f20-08d978062aea', N'Ambalangoda', N'D', CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-0f46-08d9780668f2', N'Wennappuwa', N'D', CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-10d6-08d97803b61a', N'Colombo-05', N'A', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-1117-08d97806004b', N'Kaluthara', N'D', CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-167a-08d978063483', N'Chilaw', N'D', CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-17e5-08d978042bd5', N'Colombo-07', N'A', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-1c2b-08d9780505a8', N'Kaduwela', N'C', CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-1eca-08d978075878', N'Mullativu', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-2b68-08d978064240', N'Negambo', N'D', CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-2e88-08d978046cb4', N'Colombo-12', N'A', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-301b-08d978047817', N'Colombo-13', N'A', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-311f-08d97807eb82', N'Rathnapura', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-35d3-08d978085587', N'Nuwaraeliya', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-3619-08d978080c0d', N'Matale', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-39c0-08d977fe7455', N'Colombo ', N'A', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-476f-08d978046189', N'Colombo-11', N'A', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-4985-08d977fe9b1e', N'Colombo 03', N'A', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-4afe-08d978083024', N'Gampola', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-4bfb-08d97808437f', N'Hatton', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-4d5b-08d97805e078', N'Kurunagala', N'D', CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-4de5-08d9780685b1', N'Panadura', N'D', CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-4fa3-08d978051b94', N'Homagama', N'C', CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-51d9-08d9780749de', N'Kilinochchi', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-5ac1-08d97807d4b8', N'Matara', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-5b40-08d978048c75', N'Colombo-15', N'A', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-624b-08d97807ca51', N'Puttalam', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-64b1-08d97805d5ae', N'Gampaha', N'D', CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-650f-08d97746e54b', N'Colombo-02', N'A', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-667a-08d978073c6d', N'Jafna', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-677f-08d97803204f', N'Colombo 04', N'A', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-690c-08d97807df87', N'Hambanthota', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-6af1-08d97804572d', N'Colombo-10', N'A', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-6b2c-08d978077210', N'Vavuniya', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-6e40-08d97730f3be', N'Colombo-01', N'A', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-75f6-08d97807872d', N'Trincomalee', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-7a0e-08d978061f45', N'Awissawella', N'D', CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-7d1d-08d97804398f', N'Colombo-08', N'A', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-82d3-08d978076158', N'Mannar', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-8e2e-08d978079196', N'Batticoloa', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-8eba-08d97807c20a', N'Badulla', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-93c8-08d97806135e', N'Galle', N'D', CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-965e-08d97807afba', N'Dambulla', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-a06e-08d97808161a', N'Bandarawala', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-b6bf-08d97807f538', N'Embilipitiya', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-b83f-08d9780671fb', N'Wattala', N'D', CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-ba65-08d97805ebb3', N'Kegalle', N'D', CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-c96f-08d97807a670', N'Monaragala', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-d857-08d978079945', N'Ampara', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-db8a-08d97805f383', N'Kandy', N'D', CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-df28-08d9780483ae', N'Colombo-14', N'A', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-e0b9-08d97808681b', N'Balangoda', N'E', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-e871-08d978067a78', N'Mirigama', N'D', CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-e9e1-08d97803d063', N'Colombo-06', N'A', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-f5e1-08d97804eb9c', N'suburbs', N'B', CAST(175.00 AS Decimal(18, 2)))
INSERT [dbo].[Cities] ([Id], [Name], [Zone], [Amount]) VALUES (N'09020000-5d9d-0015-f962-08d9780510f3', N'Pilindala', N'C', CAST(200.00 AS Decimal(18, 2)))
