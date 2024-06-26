CREATE DATABASE QL_HOCVIEN_CNET
GO
USE [QL_HOCVIEN_CNET]
GO
/****** Object:  Table [dbo].[DIEMDANH]    Script Date: 12/10/2023 3:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIEMDANH](
	[NGAYVANG] [datetime] NOT NULL,
	[MAHV] [char](15) NOT NULL,
	[MALOPHP] [char](15) NULL,
 CONSTRAINT [PK_DIEMDANH] PRIMARY KEY CLUSTERED 
(
	[MAHV] ASC,
	[NGAYVANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 12/10/2023 3:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAOVIEN](
	[MAGV] [char](15) NOT NULL,
	[TENGV] [nvarchar](50) NULL,
	[TENTKGV] [char](30) NULL,
	[MATKHAU] [char](20) NULL,
 CONSTRAINT [PK_GIAOVIEN] PRIMARY KEY CLUSTERED 
(
	[MAGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 12/10/2023 3:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MAHD] [char](15) NOT NULL,
	[MAHV] [char](15) NULL,
	[NGAYLAP] [datetime] NULL,
	[MALOPHP] [char](15) NULL,
	[MAKM] [char](15) NULL,
	[TENTKNV] [char](30) NULL,
	[THANHTIEN] [money] NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCTAP]    Script Date: 12/10/2023 3:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCTAP](
	[MABT] [char](15) NOT NULL,
	[MAHV] [char](15) NOT NULL,
	[DIEM] [int] NULL,
	[DIEMTOIDA] [int] NULL,
	[MALOPHP] [char](15) NULL,
 CONSTRAINT [PK_HOCTAP] PRIMARY KEY CLUSTERED 
(
	[MABT] ASC,
	[MAHV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCVIEN]    Script Date: 12/10/2023 3:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCVIEN](
	[MAHV] [char](15) NOT NULL,
	[HOTENHV] [nvarchar](50) NULL,
	[GIOITINH] [nvarchar](5) NULL,
	[DIACHI] [nvarchar](50) NULL,
	[EMAIL] [char](50) NULL,
	[SDT] [char](10) NULL,
 CONSTRAINT [PK_HOCVIEN] PRIMARY KEY CLUSTERED 
(
	[MAHV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 12/10/2023 3:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[MAKM] [char](15) NOT NULL,
	[SOHVNHOM] [int] NULL,
	[SOTIENGIAM] [money] NULL,
 CONSTRAINT [PK_KHUYENMAI] PRIMARY KEY CLUSTERED 
(
	[MAKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOPHOCPHAN]    Script Date: 12/10/2023 3:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOPHOCPHAN](
	[MALOPHP] [char](15) NOT NULL,
	[TENLOPHP] [nvarchar](50) NULL,
	[TENKHOA] [nvarchar](50) NULL,
	[NGAYKHAIGIANG] [date] NULL,
	[NGAYKT] [date] NULL,
	[LICHHOC] [nvarchar](50) NULL,
	[SISO] [int] NULL,
	[HOCPHI] [money] NULL,
 CONSTRAINT [PK_LOPHOCPHAN] PRIMARY KEY CLUSTERED 
(
	[MALOPHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 12/10/2023 3:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[TENTKNV] [char](30) NOT NULL,
	[MATKHAU] [char](20) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[TENTKNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANCONG]    Script Date: 12/10/2023 3:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANCONG](
	[MAGV] [char](15) NOT NULL,
	[MALOPHP] [char](15) NOT NULL,
 CONSTRAINT [PK_PHANCONG] PRIMARY KEY CLUSTERED 
(
	[MAGV] ASC,
	[MALOPHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANLOP]    Script Date: 12/10/2023 3:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANLOP](
	[MALOPHP] [char](15) NOT NULL,
	[MAHV] [char](15) NOT NULL,
 CONSTRAINT [PK_PHANLOP] PRIMARY KEY CLUSTERED 
(
	[MALOPHP] ASC,
	[MAHV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DIEMDANH] ([NGAYVANG], [MAHV], [MALOPHP]) VALUES (CAST(N'2022-02-15T00:00:00.000' AS DateTime), N'HV001          ', N'HP001          ')
INSERT [dbo].[DIEMDANH] ([NGAYVANG], [MAHV], [MALOPHP]) VALUES (CAST(N'2022-02-17T00:00:00.000' AS DateTime), N'HV002          ', N'HP001          ')
INSERT [dbo].[DIEMDANH] ([NGAYVANG], [MAHV], [MALOPHP]) VALUES (CAST(N'2023-09-14T00:00:00.000' AS DateTime), N'HV004          ', N'HP004          ')
INSERT [dbo].[DIEMDANH] ([NGAYVANG], [MAHV], [MALOPHP]) VALUES (CAST(N'2023-09-16T00:00:00.000' AS DateTime), N'HV004          ', N'HP004          ')
INSERT [dbo].[DIEMDANH] ([NGAYVANG], [MAHV], [MALOPHP]) VALUES (CAST(N'2023-10-12T00:00:00.000' AS DateTime), N'HV006          ', N'HP004          ')
INSERT [dbo].[DIEMDANH] ([NGAYVANG], [MAHV], [MALOPHP]) VALUES (CAST(N'2023-04-03T00:00:00.000' AS DateTime), N'HV007          ', N'HP003          ')
GO
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [TENTKGV], [MATKHAU]) VALUES (N'GV001          ', N'Nguyễn Thanh Tùng', N'thanhtung10                   ', N'Mkgvtoeic01@        ')
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [TENTKGV], [MATKHAU]) VALUES (N'GV002          ', N'Nguyễn Thị Lan Ngọc', N'lanngoc15                     ', N'Mkgvielts02@        ')
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [TENTKGV], [MATKHAU]) VALUES (N'GV003          ', N'Phan Thuý Ngân', N'thuyngan04                    ', N'Mkgvhsk03@          ')
GO
INSERT [dbo].[HOADON] ([MAHD], [MAHV], [NGAYLAP], [MALOPHP], [MAKM], [TENTKNV], [THANHTIEN]) VALUES (N'HD08082023_003 ', N'HV003          ', CAST(N'2023-08-08T00:00:00.000' AS DateTime), N'HP004          ', N'KM200          ', N'NV00289                       ', 3800000.0000)
INSERT [dbo].[HOADON] ([MAHD], [MAHV], [NGAYLAP], [MALOPHP], [MAKM], [TENTKNV], [THANHTIEN]) VALUES (N'HD08082023_004 ', N'HV004          ', CAST(N'2023-08-08T00:00:00.000' AS DateTime), N'HP004          ', N'KM200          ', N'NV00152                       ', 3800000.0000)
INSERT [dbo].[HOADON] ([MAHD], [MAHV], [NGAYLAP], [MALOPHP], [MAKM], [TENTKNV], [THANHTIEN]) VALUES (N'HD08082023_005 ', N'HV005          ', CAST(N'2023-08-08T00:00:00.000' AS DateTime), N'HP004          ', N'KM200          ', N'NV00289                       ', 4000000.0000)
INSERT [dbo].[HOADON] ([MAHD], [MAHV], [NGAYLAP], [MALOPHP], [MAKM], [TENTKNV], [THANHTIEN]) VALUES (N'HD08082023_006 ', N'HV006          ', CAST(N'2023-08-08T00:00:00.000' AS DateTime), N'HP004          ', N'KM200          ', N'NV00152                       ', 4000000.0000)
INSERT [dbo].[HOADON] ([MAHD], [MAHV], [NGAYLAP], [MALOPHP], [MAKM], [TENTKNV], [THANHTIEN]) VALUES (N'HD10022022_001 ', N'HV001          ', CAST(N'2022-02-10T00:00:00.000' AS DateTime), N'HP001          ', N'KM100          ', N'NV00152                       ', 4500000.0000)
INSERT [dbo].[HOADON] ([MAHD], [MAHV], [NGAYLAP], [MALOPHP], [MAKM], [TENTKNV], [THANHTIEN]) VALUES (N'HD10022022_002 ', N'HV002          ', CAST(N'2022-02-10T00:00:00.000' AS DateTime), N'HP001          ', N'KM100          ', N'NV00289                       ', 4500000.0000)
INSERT [dbo].[HOADON] ([MAHD], [MAHV], [NGAYLAP], [MALOPHP], [MAKM], [TENTKNV], [THANHTIEN]) VALUES (N'HD15102023_008 ', N'HV006          ', CAST(N'2023-10-15T00:00:00.000' AS DateTime), N'HP005          ', NULL, N'NV00152                       ', 6000000.0000)
INSERT [dbo].[HOADON] ([MAHD], [MAHV], [NGAYLAP], [MALOPHP], [MAKM], [TENTKNV], [THANHTIEN]) VALUES (N'HD28032023_007 ', N'HV007          ', CAST(N'2023-03-28T00:00:00.000' AS DateTime), N'HP003          ', NULL, N'NV00289                       ', 5000000.0000)
GO
INSERT [dbo].[HOCTAP] ([MABT], [MAHV], [DIEM], [DIEMTOIDA], [MALOPHP]) VALUES (N'BTHP001_001    ', N'HV001          ', 80, 100, N'HP001          ')
INSERT [dbo].[HOCTAP] ([MABT], [MAHV], [DIEM], [DIEMTOIDA], [MALOPHP]) VALUES (N'BTHP001_001    ', N'HV002          ', NULL, 100, N'HP001          ')
INSERT [dbo].[HOCTAP] ([MABT], [MAHV], [DIEM], [DIEMTOIDA], [MALOPHP]) VALUES (N'BTHP001_002    ', N'HV001          ', 50, 100, N'HP001          ')
INSERT [dbo].[HOCTAP] ([MABT], [MAHV], [DIEM], [DIEMTOIDA], [MALOPHP]) VALUES (N'BTHP001_002    ', N'HV002          ', 70, 100, N'HP001          ')
INSERT [dbo].[HOCTAP] ([MABT], [MAHV], [DIEM], [DIEMTOIDA], [MALOPHP]) VALUES (N'BTHP003_001    ', N'HV007          ', 50, 100, N'HP003          ')
INSERT [dbo].[HOCTAP] ([MABT], [MAHV], [DIEM], [DIEMTOIDA], [MALOPHP]) VALUES (N'BTHP003_002    ', N'HV007          ', 50, 100, N'HP003          ')
INSERT [dbo].[HOCTAP] ([MABT], [MAHV], [DIEM], [DIEMTOIDA], [MALOPHP]) VALUES (N'BTHP004_001    ', N'HV003          ', 20, 100, N'HP004          ')
INSERT [dbo].[HOCTAP] ([MABT], [MAHV], [DIEM], [DIEMTOIDA], [MALOPHP]) VALUES (N'BTHP004_001    ', N'HV004          ', 60, 100, N'HP004          ')
INSERT [dbo].[HOCTAP] ([MABT], [MAHV], [DIEM], [DIEMTOIDA], [MALOPHP]) VALUES (N'BTHP004_001    ', N'HV005          ', 40, 100, N'HP004          ')
INSERT [dbo].[HOCTAP] ([MABT], [MAHV], [DIEM], [DIEMTOIDA], [MALOPHP]) VALUES (N'BTHP004_001    ', N'HV006          ', NULL, 100, N'HP004          ')
INSERT [dbo].[HOCTAP] ([MABT], [MAHV], [DIEM], [DIEMTOIDA], [MALOPHP]) VALUES (N'BTHP004_002    ', N'HV003          ', 20, 100, N'HP004          ')
INSERT [dbo].[HOCTAP] ([MABT], [MAHV], [DIEM], [DIEMTOIDA], [MALOPHP]) VALUES (N'BTHP004_002    ', N'HV004          ', NULL, 100, N'HP004          ')
INSERT [dbo].[HOCTAP] ([MABT], [MAHV], [DIEM], [DIEMTOIDA], [MALOPHP]) VALUES (N'BTHP004_002    ', N'HV005          ', NULL, 100, N'HP004          ')
INSERT [dbo].[HOCTAP] ([MABT], [MAHV], [DIEM], [DIEMTOIDA], [MALOPHP]) VALUES (N'BTHP004_002    ', N'HV006          ', 80, 100, N'HP004          ')
INSERT [dbo].[HOCTAP] ([MABT], [MAHV], [DIEM], [DIEMTOIDA], [MALOPHP]) VALUES (N'BTHP005_001    ', N'HV006          ', 90, 100, N'HP005          ')
GO
INSERT [dbo].[HOCVIEN] ([MAHV], [HOTENHV], [GIOITINH], [DIACHI], [EMAIL], [SDT]) VALUES (N'HV001          ', N'Trương Lê Bảo Trân', N'Nữ', N'Long An', N'truonglebaotran2201@gmail.com                     ', N'0916649072')
INSERT [dbo].[HOCVIEN] ([MAHV], [HOTENHV], [GIOITINH], [DIACHI], [EMAIL], [SDT]) VALUES (N'HV002          ', N'Phan Trần Minh Tâm', N'Nữ', N'Tây Ninh', N'phantranminhtam1802@gmail.com                     ', N'0987138914')
INSERT [dbo].[HOCVIEN] ([MAHV], [HOTENHV], [GIOITINH], [DIACHI], [EMAIL], [SDT]) VALUES (N'HV003          ', N'Phan Thế Thanh', N'Nam', N'TPHCM', N'phanthethanh0209@gmail.com                        ', N'0928366736')
INSERT [dbo].[HOCVIEN] ([MAHV], [HOTENHV], [GIOITINH], [DIACHI], [EMAIL], [SDT]) VALUES (N'HV004          ', N'Nguyễn Minh Trí', N'Nam', N'Bến Tre', N'nguyenminhtri2404@gmail.com                       ', N'0928723561')
INSERT [dbo].[HOCVIEN] ([MAHV], [HOTENHV], [GIOITINH], [DIACHI], [EMAIL], [SDT]) VALUES (N'HV005          ', N'Lê Viết Tuấn Khải', N'Nam', N'Củ Chi', N'leviettuankhai1002@gmail.com                      ', N'0928163618')
INSERT [dbo].[HOCVIEN] ([MAHV], [HOTENHV], [GIOITINH], [DIACHI], [EMAIL], [SDT]) VALUES (N'HV006          ', N'Hồ Minh Quang', N'Nam', N'Bến Tre', N'hominhquang2903@gmail.com                         ', N'0923588195')
INSERT [dbo].[HOCVIEN] ([MAHV], [HOTENHV], [GIOITINH], [DIACHI], [EMAIL], [SDT]) VALUES (N'HV007          ', N'Hoàng Thị Trường An', N'Nữ', N'Long An', N'hoangthitruongan0211@gmail.com                    ', N'0917298137')
GO
INSERT [dbo].[KHUYENMAI] ([MAKM], [SOHVNHOM], [SOTIENGIAM]) VALUES (N'KM100          ', 2, 100000.0000)
INSERT [dbo].[KHUYENMAI] ([MAKM], [SOHVNHOM], [SOTIENGIAM]) VALUES (N'KM150          ', 3, 150000.0000)
INSERT [dbo].[KHUYENMAI] ([MAKM], [SOHVNHOM], [SOTIENGIAM]) VALUES (N'KM200          ', 4, 200000.0000)
INSERT [dbo].[KHUYENMAI] ([MAKM], [SOHVNHOM], [SOTIENGIAM]) VALUES (N'KM250          ', 5, 250000.0000)
INSERT [dbo].[KHUYENMAI] ([MAKM], [SOHVNHOM], [SOTIENGIAM]) VALUES (N'KM300          ', 6, 300000.0000)
INSERT [dbo].[KHUYENMAI] ([MAKM], [SOHVNHOM], [SOTIENGIAM]) VALUES (N'KM500          ', 7, 500000.0000)
GO
INSERT [dbo].[LOPHOCPHAN] ([MALOPHP], [TENLOPHP], [TENKHOA], [NGAYKHAIGIANG], [NGAYKT], [LICHHOC], [SISO], [HOCPHI]) VALUES (N'HP001          ', N'TOEIC 2 Kỹ Năng 500+ T357', N'TOEIC', CAST(N'2022-02-15' AS Date), CAST(N'2022-05-14' AS Date), N'T357 19h45-21h15', 20, 3900000.0000)
INSERT [dbo].[LOPHOCPHAN] ([MALOPHP], [TENLOPHP], [TENKHOA], [NGAYKHAIGIANG], [NGAYKT], [LICHHOC], [SISO], [HOCPHI]) VALUES (N'HP002          ', N'TOEIC 4 Kỹ Năng 500+ T246', N'TOEIC', CAST(N'2023-07-03' AS Date), CAST(N'2023-10-01' AS Date), N'T246 18h-19h30', 20, 8700000.0000)
INSERT [dbo].[LOPHOCPHAN] ([MALOPHP], [TENLOPHP], [TENKHOA], [NGAYKHAIGIANG], [NGAYKT], [LICHHOC], [SISO], [HOCPHI]) VALUES (N'HP003          ', N'IELTS 4.0 T246', N'IELTS', CAST(N'2023-04-03' AS Date), CAST(N'2023-07-03' AS Date), N'T246 18h-19h30', 20, 4000000.0000)
INSERT [dbo].[LOPHOCPHAN] ([MALOPHP], [TENLOPHP], [TENKHOA], [NGAYKHAIGIANG], [NGAYKT], [LICHHOC], [SISO], [HOCPHI]) VALUES (N'HP004          ', N'IELTS 4.0- 7.5+ T357', N'IELTS', CAST(N'2023-08-15' AS Date), CAST(N'2023-12-30' AS Date), N'T357 19h45-21h15', 10, 10500000.0000)
INSERT [dbo].[LOPHOCPHAN] ([MALOPHP], [TENLOPHP], [TENKHOA], [NGAYKHAIGIANG], [NGAYKT], [LICHHOC], [SISO], [HOCPHI]) VALUES (N'HP005          ', N'HSK3+ HSKK T7CN', N'HSK', CAST(N'2023-10-21' AS Date), CAST(N'2023-12-21' AS Date), N'T7CN 9h-11h', 20, 3200000.0000)
INSERT [dbo].[LOPHOCPHAN] ([MALOPHP], [TENLOPHP], [TENKHOA], [NGAYKHAIGIANG], [NGAYKT], [LICHHOC], [SISO], [HOCPHI]) VALUES (N'HP006          ', N'Tiếng Trung giao tiếp', N'Tiếng Trung', CAST(N'2024-01-22' AS Date), CAST(N'2024-04-10' AS Date), N'T7CN 9h-11h', 20, 3200000.0000)
INSERT [dbo].[LOPHOCPHAN] ([MALOPHP], [TENLOPHP], [TENKHOA], [NGAYKHAIGIANG], [NGAYKT], [LICHHOC], [SISO], [HOCPHI]) VALUES (N'HP007          ', N'Tiếng Anh giao tiếp', N'Tiếng Anh', CAST(N'2023-12-24' AS Date), CAST(N'2023-04-12' AS Date), N'T246 18h-19h30', 20, 3200000.0000)
GO
INSERT [dbo].[NHANVIEN] ([TENTKNV], [MATKHAU]) VALUES (N'NV00152                       ', N'Mknv0152@           ')
INSERT [dbo].[NHANVIEN] ([TENTKNV], [MATKHAU]) VALUES (N'NV00289                       ', N'Mknv0289@           ')
GO
INSERT [dbo].[PHANCONG] ([MAGV], [MALOPHP]) VALUES (N'GV001          ', N'HP002          ')
INSERT [dbo].[PHANCONG] ([MAGV], [MALOPHP]) VALUES (N'GV001          ', N'HP005          ')
INSERT [dbo].[PHANCONG] ([MAGV], [MALOPHP]) VALUES (N'GV002          ', N'HP001          ')
INSERT [dbo].[PHANCONG] ([MAGV], [MALOPHP]) VALUES (N'GV002          ', N'HP004          ')
INSERT [dbo].[PHANCONG] ([MAGV], [MALOPHP]) VALUES (N'GV003          ', N'HP003          ')
GO
INSERT [dbo].[PHANLOP] ([MALOPHP], [MAHV]) VALUES (N'HP001          ', N'HV001          ')
INSERT [dbo].[PHANLOP] ([MALOPHP], [MAHV]) VALUES (N'HP001          ', N'HV002          ')
INSERT [dbo].[PHANLOP] ([MALOPHP], [MAHV]) VALUES (N'HP003          ', N'HV007          ')
INSERT [dbo].[PHANLOP] ([MALOPHP], [MAHV]) VALUES (N'HP004          ', N'HV003          ')
INSERT [dbo].[PHANLOP] ([MALOPHP], [MAHV]) VALUES (N'HP004          ', N'HV004          ')
INSERT [dbo].[PHANLOP] ([MALOPHP], [MAHV]) VALUES (N'HP004          ', N'HV005          ')
INSERT [dbo].[PHANLOP] ([MALOPHP], [MAHV]) VALUES (N'HP004          ', N'HV006          ')
INSERT [dbo].[PHANLOP] ([MALOPHP], [MAHV]) VALUES (N'HP005          ', N'HV006          ')
GO
ALTER TABLE [dbo].[DIEMDANH]  WITH CHECK ADD  CONSTRAINT [FK_DIEMDANH_HOCVIEN] FOREIGN KEY([MAHV])
REFERENCES [dbo].[HOCVIEN] ([MAHV])
GO
ALTER TABLE [dbo].[DIEMDANH] CHECK CONSTRAINT [FK_DIEMDANH_HOCVIEN]
GO
ALTER TABLE [dbo].[DIEMDANH]  WITH CHECK ADD  CONSTRAINT [FK_DIEMDANH_LOPHOCPHAN] FOREIGN KEY([MALOPHP])
REFERENCES [dbo].[LOPHOCPHAN] ([MALOPHP])
GO
ALTER TABLE [dbo].[DIEMDANH] CHECK CONSTRAINT [FK_DIEMDANH_LOPHOCPHAN]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_HOCVIEN] FOREIGN KEY([MAHV])
REFERENCES [dbo].[HOCVIEN] ([MAHV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_HOCVIEN]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHUYENMAI] FOREIGN KEY([MAKM])
REFERENCES [dbo].[KHUYENMAI] ([MAKM])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHUYENMAI]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_LOPHOCPHAN] FOREIGN KEY([MALOPHP])
REFERENCES [dbo].[LOPHOCPHAN] ([MALOPHP])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_LOPHOCPHAN]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([TENTKNV])
REFERENCES [dbo].[NHANVIEN] ([TENTKNV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[HOCTAP]  WITH CHECK ADD  CONSTRAINT [FK_HOCTAP_HOCVIEN] FOREIGN KEY([MAHV])
REFERENCES [dbo].[HOCVIEN] ([MAHV])
GO
ALTER TABLE [dbo].[HOCTAP] CHECK CONSTRAINT [FK_HOCTAP_HOCVIEN]
GO
ALTER TABLE [dbo].[HOCTAP]  WITH CHECK ADD  CONSTRAINT [FK_HOCTAP_LOPHOCPHAN] FOREIGN KEY([MALOPHP])
REFERENCES [dbo].[LOPHOCPHAN] ([MALOPHP])
GO
ALTER TABLE [dbo].[HOCTAP] CHECK CONSTRAINT [FK_HOCTAP_LOPHOCPHAN]
GO
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_GIAOVIEN] FOREIGN KEY([MAGV])
REFERENCES [dbo].[GIAOVIEN] ([MAGV])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PHANCONG_GIAOVIEN]
GO
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_LOPHOCPHAN] FOREIGN KEY([MALOPHP])
REFERENCES [dbo].[LOPHOCPHAN] ([MALOPHP])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PHANCONG_LOPHOCPHAN]
GO
ALTER TABLE [dbo].[PHANLOP]  WITH CHECK ADD  CONSTRAINT [FK_PHANLOP_HOCVIEN] FOREIGN KEY([MAHV])
REFERENCES [dbo].[HOCVIEN] ([MAHV])
GO
ALTER TABLE [dbo].[PHANLOP] CHECK CONSTRAINT [FK_PHANLOP_HOCVIEN]
GO
ALTER TABLE [dbo].[PHANLOP]  WITH CHECK ADD  CONSTRAINT [FK_PHANLOP_LOPHOCPHAN] FOREIGN KEY([MALOPHP])
REFERENCES [dbo].[LOPHOCPHAN] ([MALOPHP])
GO
ALTER TABLE [dbo].[PHANLOP] CHECK CONSTRAINT [FK_PHANLOP_LOPHOCPHAN]
GO
