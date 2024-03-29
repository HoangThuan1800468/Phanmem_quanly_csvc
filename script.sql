USE [master]
GO
/****** Object:  Database [quanlycosovatchat]    Script Date: 5/23/2021 7:16:04 PM ******/
CREATE DATABASE [quanlycosovatchat]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'quanlycosovatchat', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SA\MSSQL\DATA\quanlycosovatchat.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'quanlycosovatchat_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SA\MSSQL\DATA\quanlycosovatchat_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [quanlycosovatchat] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [quanlycosovatchat].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [quanlycosovatchat] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [quanlycosovatchat] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [quanlycosovatchat] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [quanlycosovatchat] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [quanlycosovatchat] SET ARITHABORT OFF 
GO
ALTER DATABASE [quanlycosovatchat] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [quanlycosovatchat] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [quanlycosovatchat] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [quanlycosovatchat] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [quanlycosovatchat] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [quanlycosovatchat] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [quanlycosovatchat] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [quanlycosovatchat] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [quanlycosovatchat] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [quanlycosovatchat] SET  ENABLE_BROKER 
GO
ALTER DATABASE [quanlycosovatchat] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [quanlycosovatchat] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [quanlycosovatchat] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [quanlycosovatchat] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [quanlycosovatchat] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [quanlycosovatchat] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [quanlycosovatchat] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [quanlycosovatchat] SET RECOVERY FULL 
GO
ALTER DATABASE [quanlycosovatchat] SET  MULTI_USER 
GO
ALTER DATABASE [quanlycosovatchat] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [quanlycosovatchat] SET DB_CHAINING OFF 
GO
ALTER DATABASE [quanlycosovatchat] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [quanlycosovatchat] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [quanlycosovatchat] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [quanlycosovatchat] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'quanlycosovatchat', N'ON'
GO
ALTER DATABASE [quanlycosovatchat] SET QUERY_STORE = OFF
GO
USE [quanlycosovatchat]
GO
/****** Object:  Table [dbo].[baotrivasuachua]    Script Date: 5/23/2021 7:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[baotrivasuachua](
	[macsvc] [char](10) NULL,
	[maphong] [char](10) NULL,
	[ngaybaotri] [date] NULL,
	[mabaotri] [char](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cosovatchat]    Script Date: 5/23/2021 7:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cosovatchat](
	[tencsvc] [nvarchar](30) NULL,
	[macsvc] [char](10) NOT NULL,
	[tinhtrangcsvc] [nvarchar](20) NULL,
	[ngaynhancsvc] [date] NULL,
	[loaicsvc] [nvarchar](20) NULL,
	[soluong] [int] NULL,
	[donvi] [nvarchar](10) NULL,
	[giatri] [money] NULL,
	[hansudungcsvc] [date] NULL,
	[hinhthucthanhtoan] [nvarchar](20) NULL,
	[phongluutru] [nvarchar](30) NULL,
	[nguontien] [nvarchar](20) NULL,
	[nguoigiaodich] [nvarchar](30) NULL,
	[maphong] [char](10) NULL,
	[mabaotri] [nchar](10) NULL,
	[mota] [nvarchar](30) NULL,
	[xoa] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[macsvc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kiemke]    Script Date: 5/23/2021 7:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kiemke](
	[makiemke] [char](10) NOT NULL,
	[idgiaovien] [char](10) NULL,
	[tengiaovien] [nvarchar](30) NULL,
	[chucvu] [nvarchar](20) NULL,
	[maphong] [char](10) NULL,
	[tinhtrangcsvc] [nvarchar](20) NULL,
	[tinhtrangphong] [nvarchar](20) NULL,
	[tinhtrangkiemduyet] [int] NULL,
	[ngaykiemke] [date] NULL,
 CONSTRAINT [PK__kiemke__70A5D79E1AF8BD79] PRIMARY KEY CLUSTERED 
(
	[makiemke] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kiemke_csvcphong]    Script Date: 5/23/2021 7:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kiemke_csvcphong](
	[makiemke] [char](10) NULL,
	[macsvc] [char](10) NULL,
	[soluong] [int] NULL,
	[tinhtrangcsvc] [nvarchar](50) NULL,
	[tencsvc] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phonghoc]    Script Date: 5/23/2021 7:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phonghoc](
	[tenphong] [nvarchar](30) NULL,
	[maphong] [char](10) NOT NULL,
	[tinhtrangphong] [nvarchar](20) NULL,
	[dientich] [char](10) NULL,
	[soluonghocsinh] [int] NULL,
	[tinhtrangkiemkecuaphong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 5/23/2021 7:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[idgiaovien] [char](10) NOT NULL,
	[tengiaovien] [nvarchar](50) NULL,
	[chucvu] [nvarchar](20) NULL,
	[matkhau] [char](10) NULL,
	[kichhoat] [nvarchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[idgiaovien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xuatvanban]    Script Date: 5/23/2021 7:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xuatvanban](
	[loaivanban] [nvarchar](20) NULL,
	[mavanban] [char](10) NOT NULL,
	[idgiaovien] [char](10) NULL,
	[ngaybaotri] [date] NULL,
	[bensuachua] [nvarchar](30) NULL,
	[nguoidaidien] [nvarchar](30) NULL,
	[sdt] [char](10) NULL,
	[diachi] [nvarchar](100) NULL,
	[ngayhoanthanh] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[mavanban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xuatvanban_csvc]    Script Date: 5/23/2021 7:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xuatvanban_csvc](
	[macsvc] [char](10) NULL,
	[mavanban] [char](10) NULL,
	[mota] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xuatvanban_kiemke]    Script Date: 5/23/2021 7:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xuatvanban_kiemke](
	[mavanban] [char](10) NOT NULL,
	[tengiaovien] [nvarchar](50) NULL,
	[chucvu] [nvarchar](50) NULL,
	[maphong] [char](10) NULL,
	[tinhtrangphong] [nvarchar](30) NULL,
	[ngaykiemke] [date] NULL,
 CONSTRAINT [PK_xuatvanban_kiemke] PRIMARY KEY CLUSTERED 
(
	[mavanban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xuatvanban_kiemke_csvc]    Script Date: 5/23/2021 7:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xuatvanban_kiemke_csvc](
	[mavanban] [char](10) NULL,
	[macsvc] [char](10) NULL,
	[soluong] [int] NULL,
	[tinhtrangcsvc] [nvarchar](50) NULL,
	[tencsvc] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[baotrivasuachua] ([macsvc], [maphong], [ngaybaotri], [mabaotri]) VALUES (N'B002      ', NULL, CAST(N'2020-12-21' AS Date), N'12344     ')
INSERT [dbo].[baotrivasuachua] ([macsvc], [maphong], [ngaybaotri], [mabaotri]) VALUES (N'B005      ', NULL, CAST(N'2020-01-01' AS Date), N'aaaaads   ')
INSERT [dbo].[baotrivasuachua] ([macsvc], [maphong], [ngaybaotri], [mabaotri]) VALUES (N'Q006      ', NULL, CAST(N'2020-08-01' AS Date), N'2121212   ')
INSERT [dbo].[baotrivasuachua] ([macsvc], [maphong], [ngaybaotri], [mabaotri]) VALUES (N'5435      ', NULL, CAST(N'2020-05-02' AS Date), N'2121      ')
GO
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Bàn thực hành địa', N'111       ', N'Tốt', CAST(N'2020-09-01' AS Date), N'Bàn', 1, N'Cái', 650000.0000, CAST(N'2020-12-01' AS Date), N'Tiền mặt', N'Phòng Bàn', N'Quỹ trường', N'Hiệu trưởng', N'0001      ', NULL, NULL, NULL)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Đèn thực hành lý', N'111111    ', N'Đã bảo trì', CAST(N'2020-01-01' AS Date), N'Thiết bị điện', 1, N'Cái', 190000.0000, CAST(N'2020-12-01' AS Date), N'Chuyển khoản', N'Kho', N'Quỹ trường', N'Hiệu trưởng', N'0001      ', NULL, NULL, NULL)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'kitt', N'123       ', N'Đã bảo trì', CAST(N'2020-01-02' AS Date), N'Tủ', 3, N'Cái', 4524.0000, CAST(N'2021-01-03' AS Date), N'Chuyển khoản', N'Kho', N'Quỹ trường', N'3245', N'0000      ', NULL, NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'thuan', N'12345     ', N'Tốt', CAST(N'2020-12-12' AS Date), N'Bàn', 2, N'Cái', 12312.0000, CAST(N'2020-12-12' AS Date), N'Tiền mặt', N'Phòng Quat', N'Quỹ khuyến học', N'fdgsdf', N'0003      ', NULL, NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'kay', N'123e      ', N'Đã bảo trì', CAST(N'2021-01-01' AS Date), N'Tủ', 3, N'Cái', 23423.0000, CAST(N'2022-01-01' AS Date), N'Chuyển khoản', N'Kho', N'Quỹ bộ Giáo Dục', N'dfa', N'0000      ', NULL, NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'thuana', N'2323      ', N'Hỏng', CAST(N'2020-12-12' AS Date), N'Bàn', 1, N'Cái', 343434.0000, CAST(N'2020-12-21' AS Date), N'Chuyển khoản', N'Phòng Màn hình', N'Quỹ khuyến học', N'ghdfg', N'0004      ', NULL, NULL, 1)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'bàn phím', N'234       ', N'Tốt', CAST(N'2020-01-01' AS Date), N'Thiết bị điện', 4, N'Lọ', 1234.0000, CAST(N'2020-01-01' AS Date), N'Chuyển khoản', N'Kho', N'Quỹ khuyến học', N'GIáo viên', N'0000      ', NULL, NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Màn hình giám sát', N'24534     ', N'Hỏng', CAST(N'2020-05-01' AS Date), N'Cái', 46, N'Cái', 55000000.0000, CAST(N'2020-11-22' AS Date), N'Trực tiếp', N'Phòng Màn hình', N'Quỹ trường', N'Hiệu trưởng', N'0000      ', NULL, NULL, NULL)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'yasuo', N'34123     ', N'Tốt', CAST(N'2020-03-04' AS Date), N'Tủ', 1, N'Lọ', 35423.0000, CAST(N'2020-07-05' AS Date), N'Chuyển khoản', N'Kho', N'Quỹ khuyến học', N'egdf', N'0000      ', NULL, NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'zoe', N'5435      ', N'Đang bảo trì', CAST(N'2020-04-02' AS Date), N'Tủ', 2, N'Lọ', 42534.0000, CAST(N'2021-04-03' AS Date), N'Trả góp', N'Kho', N'Quỹ khuyến học', N'sdfgs', N'0000      ', N'2121      ', NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Bàn học', N'B001      ', N'Đã bảo trì', CAST(N'2020-01-01' AS Date), N'Bàn', 10, N'Cái', 500000.0000, CAST(N'2020-12-01' AS Date), N'Tiền mặt', N'Phòng Bàn', N'Quỹ trường', N'Hiệu trưởng', N'0002      ', N'no5       ', NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Bàn thực hành lý', N'B002      ', N'Đang bảo trì', CAST(N'2020-01-16' AS Date), N'Bàn', 18, N'Cái', 550000.0000, CAST(N'2020-12-01' AS Date), N'Chuyển khoản', N'Phòng Bàn', N'Quỹ trường', N'Hiệu trưởng', N'0002      ', N'12344     ', NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Bàn thực hành sinh', N'B003      ', N'Đã bảo trì', CAST(N'2020-07-01' AS Date), N'Bàn', 10, N'Cái', 600000.0000, CAST(N'2020-12-01' AS Date), N'Tiền mặt', N'Phòng Bàn', N'Quỹ trường', N'Hiệu trưởng', N'0002      ', N'no9       ', NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Bàn thực hành địa', N'B004      ', N'Đang bảo trì', CAST(N'2020-09-01' AS Date), N'Bàn', 9, N'Cái', 650000.0000, CAST(N'2020-12-01' AS Date), N'Tiền mặt', N'Phòng Bàn', N'Quỹ trường', N'Hiệu trưởng', N'0002      ', N'no9       ', NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'sdafsdf', N'B005      ', N'Đang bảo trì', CAST(N'2020-01-01' AS Date), N'sadfas', 4, N'ấdf', 452345.0000, CAST(N'2020-02-02' AS Date), N'qưerqw', N'Kho', N'gfsadfg', N'ưqerqw', N'0000      ', N'aaaaads   ', NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Đèn học', N'D0001     ', N'Tốt', CAST(N'2020-01-01' AS Date), N'Thiết bị điện', 1, N'Cái', 120000.0000, CAST(N'2020-12-01' AS Date), N'Chuyển khoản', N'Phòng Đèn', N'Quỹ trường', N'Hiệu trưởng', N'0002      ', NULL, NULL, NULL)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Đèn học', N'D001      ', N'Tốt', CAST(N'2020-01-01' AS Date), N'Thiết bị điện', 9, N'Cái', 120000.0000, CAST(N'2020-12-01' AS Date), N'Chuyển khoản', N'Phòng Đèn', N'Quỹ trường', N'Hiệu trưởng', N'0002      ', N'no8       ', NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Đèn thực hành lý', N'D002      ', N'Đã bảo trì', CAST(N'2020-01-01' AS Date), N'Thiết bị điện', 8, N'Cái', 45345.0000, CAST(N'2020-12-01' AS Date), N'Chuyển khoản', N'Phòng Đèn', N'Quỹ trường', N'Hiệu trưởng', N'0001      ', N'no8       ', NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Đèn thực hành sinh000', N'D003      ', N'Đã bảo trì', CAST(N'2020-11-01' AS Date), N'Thiết bị điện', 20, N'Cái', 220000.0000, CAST(N'2020-12-01' AS Date), N'Tiền mặt', N'Phòng Đèn', N'Quỹ trường', N'Hiệu trưởng', N'0001      ', N'no07      ', N'hư vừa', 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Đèn thực hành địa', N'D004      ', N'Đã bảo trì', CAST(N'2020-01-22' AS Date), N'Tủ', 4, N'Cái', 320000.0000, CAST(N'2020-12-01' AS Date), N'Trả góp', N'Phòng Đèn', N'Quỹ trường', N'Hiệu trưởng', N'0001      ', N'no07      ', N'hư lắm', 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Quạt hơi nước', N'fyvyvb    ', N'Tốt', CAST(N'2020-09-21' AS Date), N'---Chọn---', 2, N'Cái', 555000.0000, CAST(N'2020-10-01' AS Date), N'Tiền mặt', N'Phòng Quat', N'Quỹ trường', N'Hiệu trưởng', N'0001      ', NULL, NULL, NULL)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Đèn thực hành lý', N'kkk09     ', N'Đã bảo trì', CAST(N'2020-01-01' AS Date), N'Thiết bị điện', 1, N'Cái', 190000.0000, CAST(N'2020-12-01' AS Date), N'Chuyển khoản', N'Kho', N'Quỹ trường', N'Hiệu trưởng', N'0000      ', NULL, NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Màn hình PC', N'lkj       ', N'Đã bảo trì', CAST(N'2020-03-01' AS Date), N'Cái', 14, N'Cái', 55000000.0000, CAST(N'2020-11-02' AS Date), N'Trực tiếp', N'Kho', N'Quỹ trường', N'Hiệu trưởng', N'0000      ', N'no07      ', N'hư vcl', 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Màn hình TV', N'MH06      ', N'Đã bảo trì', CAST(N'2020-04-01' AS Date), N'Thiết bị điện', 100, N'Cái', 25000000.0000, CAST(N'2020-11-22' AS Date), N'Chuyển khoản', N'Phòng Màn hình', N'Quỹ trường', N'Hiệu trưởng', N'0004      ', N'no3       ', N'hay', 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Màn hình PC', N'MH07      ', N'Đã bảo trì', CAST(N'2020-03-01' AS Date), N'Thiết bị điện', 86, N'Cái', 55000000.0000, CAST(N'2020-11-02' AS Date), N'Chuyển khoản', N'Phòng Màn hình', N'Quỹ trường', N'Hiệu trưởng', N'0004      ', N'no3       ', NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Màn hình giám sát', N'MH08      ', N'Đã bảo trì', CAST(N'2020-06-01' AS Date), N'Tủ', 47, N'Cái', 55000000.0000, CAST(N'2020-11-22' AS Date), N'Tiền mặt', N'Phòng Màn hình', N'Quỹ trường', N'Hiệu trưởng', N'0004      ', N'no3       ', NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Màn hình giám sát', N'pca0      ', N'Đã bảo trì', CAST(N'2020-05-01' AS Date), N'Thiết bị điện', 1, N'Cái', 55000000.0000, CAST(N'2020-11-22' AS Date), N'Chuyển khoản', N'Kho', N'Quỹ trường', N'Hiệu trưởng', N'0000      ', N'no2       ', N'aaaaavvvv', 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'ádfa', N'Q001      ', N'Bỏ', CAST(N'2020-12-12' AS Date), N'Tủ', 0, N'Cái', 345333.0000, CAST(N'2020-12-12' AS Date), N'Tiền mặt', N'Kho', N'Quỹ khuyến học', N'đá', N'0000      ', NULL, NULL, 1)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'bi', N'Q0012     ', N'Bỏ', CAST(N'2020-01-01' AS Date), N'Thiết bị điện', 0, N'Chai', 44646.0000, CAST(N'2020-01-01' AS Date), N'Chuyển khoản', N'Phòng Bàn', N'Quỹ khuyến học', N'gvhvg', N'0002      ', NULL, NULL, 1)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'ádfasd', N'Q001aa    ', N'Tốt', CAST(N'2020-01-01' AS Date), N'Bàn', 1, N'Cái', 42534.0000, CAST(N'2020-01-01' AS Date), N'Chuyển khoản', N'Kho', N'Quỹ trường', N'adfd', N'0000      ', NULL, NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'ádfasd', N'Q001s     ', N'Tốt', CAST(N'2020-12-12' AS Date), N'Bàn', 1, N'Cái', 345345.0000, CAST(N'2020-12-12' AS Date), N'Tiền mặt', N'Phòng Đèn', N'Quỹ khuyến học', N'dfgsd', N'0001      ', NULL, NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Quạt trần', N'Q004      ', N'Đã bảo trì', CAST(N'2020-09-01' AS Date), N'Thiết bị điện', 99, N'Cái', 25000.0000, CAST(N'2020-10-01' AS Date), N'Trả góp', N'Phòng Quat', N'Quỹ trường', N'Hiệu trưởng', N'0003      ', N'no2       ', N'aaa', 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Quạt hơi nước', N'Q005      ', N'Đã bảo trì', CAST(N'2020-09-21' AS Date), N'Thiết bị điện', 8, N'Cái', 555000.0000, CAST(N'2020-10-01' AS Date), N'Tiền mặt', N'Phòng Quat', N'Quỹ trường', N'Hiệu trưởng', N'0001      ', N'no2       ', NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Quạt thường', N'Q006      ', N'Đang bảo trì', CAST(N'2020-07-01' AS Date), N'Thiết bị điện', 100, N'Cái', 25000.0000, CAST(N'2020-11-01' AS Date), N'Tiền mặt', N'Phòng Quat', N'Quỹ trường', N'Hiệu trưởng', N'0003      ', N'2121212   ', N'Hỏng phần cánh quạt', 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'rrrrr', N'qqqqq     ', N'Bỏ', CAST(N'2020-09-01' AS Date), N'Cái', 1, N'Cái', 25000.0000, CAST(N'2020-10-01' AS Date), N'Trực tiếp', N'Kho', N'Quỹ trường', N'Hiệu trưởng', N'0000      ', N'no1       ', NULL, 1)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'asdff', N'sdf       ', N'Tốt', CAST(N'2020-04-03' AS Date), N'Bàn', 0, N'Lọ', 234534.0000, CAST(N'2020-04-05' AS Date), N'Chuyển khoản', N'Kho', N'Quỹ trường', N'sdfas', N'0000      ', NULL, NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Màn hình giám sát', N'thuan2    ', N'Đang bảo trì', CAST(N'2020-05-01' AS Date), N'Cái', 2, N'Cái', 55000000.0000, CAST(N'2020-11-22' AS Date), N'Trực tiếp', N'Kho', N'Quỹ trường', N'Hiệu trưởng', N'0000      ', NULL, NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Màn hình giám sát thuan', N'thuanss   ', N'Đã bảo trì', CAST(N'2020-05-01' AS Date), N'Cái', 2, N'Cái', 200000.0000, CAST(N'2020-11-22' AS Date), N'Trực tiếp', N'Kho', N'Quỹ trường', N'Hiệu trưởng', N'0000      ', N'no1       ', NULL, 0)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'Quạt trần', N'uiuiui    ', N'Bỏ', CAST(N'2020-09-01' AS Date), N'Cái', 1, N'Cái', 25000.0000, CAST(N'2020-10-01' AS Date), N'Trực tiếp', N'Kho', N'Quỹ trường', N'Hiệu trưởng', N'0000      ', N'no1       ', NULL, 1)
INSERT [dbo].[cosovatchat] ([tencsvc], [macsvc], [tinhtrangcsvc], [ngaynhancsvc], [loaicsvc], [soluong], [donvi], [giatri], [hansudungcsvc], [hinhthucthanhtoan], [phongluutru], [nguontien], [nguoigiaodich], [maphong], [mabaotri], [mota], [xoa]) VALUES (N'dang', N'ww        ', N'Bỏ', CAST(N'2020-01-01' AS Date), N'Tủ', 1, N'Cái', 48000.0000, CAST(N'2020-06-01' AS Date), N'Tiền mặt', N'Phòng Quat', N'Quỹ khuyến học', N'thuan', N'0000      ', NULL, NULL, 0)
GO
INSERT [dbo].[kiemke] ([makiemke], [idgiaovien], [tengiaovien], [chucvu], [maphong], [tinhtrangcsvc], [tinhtrangphong], [tinhtrangkiemduyet], [ngaykiemke]) VALUES (N'123123    ', N'12345     ', N'Thuận', N'Quản lý', N'0004      ', NULL, N'Tốt', 1, CAST(N'2020-12-12' AS Date))
INSERT [dbo].[kiemke] ([makiemke], [idgiaovien], [tengiaovien], [chucvu], [maphong], [tinhtrangcsvc], [tinhtrangphong], [tinhtrangkiemduyet], [ngaykiemke]) VALUES (N'1231231   ', N'6789      ', N'Dâng', N'Giáo viên', N'0002      ', NULL, N'Tốt', 1, CAST(N'2020-12-12' AS Date))
INSERT [dbo].[kiemke] ([makiemke], [idgiaovien], [tengiaovien], [chucvu], [maphong], [tinhtrangcsvc], [tinhtrangphong], [tinhtrangkiemduyet], [ngaykiemke]) VALUES (N'2222222   ', N'12345     ', N'Thuận', N'Quản lý', N'0000      ', NULL, N'Tốt', 1, CAST(N'2021-12-12' AS Date))
INSERT [dbo].[kiemke] ([makiemke], [idgiaovien], [tengiaovien], [chucvu], [maphong], [tinhtrangcsvc], [tinhtrangphong], [tinhtrangkiemduyet], [ngaykiemke]) VALUES (N'312       ', N'12345     ', N'Thuận', N'Quản lý', N'0000      ', NULL, N'Hỏng', 1, CAST(N'2999-04-05' AS Date))
INSERT [dbo].[kiemke] ([makiemke], [idgiaovien], [tengiaovien], [chucvu], [maphong], [tinhtrangcsvc], [tinhtrangphong], [tinhtrangkiemduyet], [ngaykiemke]) VALUES (N'333       ', N'12345     ', N'Thuận', N'Quản lý', N'0000      ', NULL, N'Hỏng', 1, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'123123    ', N'MH06      ', 100, N'Đang bảo trì', N'Màn hình TV')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'123123    ', N'MH07      ', 86, N'Đã bảo trì', N'Màn hình PC')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'123123    ', N'MH08      ', 47, N'Đã bảo trì', N'Màn hình giám sát')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'123123    ', N'thuanss   ', 2, N'Đã bảo trì', N'Màn hình giám sát thuan')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'2222222   ', N'B005      ', 4, N'Đang bảo trì', N'sdafsdf')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'2222222   ', N'kkk09     ', 1, N'Đã bảo trì', N'Đèn thực hành lý')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'2222222   ', N'lkj       ', 14, N'Đã bảo trì', N'Màn hình PC')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'1231231   ', N'B001      ', 10, N'Đã bảo trì', N'Bàn học')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'1231231   ', N'B002      ', 18, N'Bảo trì', N'Bàn thực hành lý')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'2222222   ', N'pca0      ', 1, N'Đã bảo trì', N'Màn hình giám sát')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'2222222   ', N'Q001aa    ', 1, N'Tốt', N'ádfasd')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'2222222   ', N'thuan2    ', 2, N'Đang bảo trì', N'Màn hình giám sát')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'2222222   ', N'thuanss   ', 2, N'Đã bảo trì', N'Màn hình giám sát thuan')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'2222222   ', N'ww        ', 1, N'Bỏ', N'dang')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'1231231   ', N'B003      ', 10, N'Đã bảo trì', N'Bàn thực hành sinh')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'1231231   ', N'B004      ', 9, N'Đang bảo trì', N'Bàn thực hành địa')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'123       ', 3, N'Tốt', N'kitt')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'123e      ', 3, N'Tốt', N'kay')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'5435      ', 2, N'Tốt', N'zoe')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'B005      ', 4, N'Đang bảo trì', N'sdafsdf')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'kkk09     ', 1, N'Đã bảo trì', N'Đèn thực hành lý')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'lkj       ', 14, N'Đã bảo trì', N'Màn hình PC')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'pca0      ', 1, N'Đã bảo trì', N'Màn hình giám sát')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'Q001aa    ', 1, N'Tốt', N'ádfasd')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'sdf       ', 0, N'Tốt', N'asdff')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'thuan2    ', 2, N'Đang bảo trì', N'Màn hình giám sát')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'thuanss   ', 2, N'Đã bảo trì', N'Màn hình giám sát thuan')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'ww        ', 1, N'Bỏ', N'dang')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'34123     ', 1, N'Tốt', N'yasuo')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'123       ', 3, N'Đã bảo trì', N'kitt')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'123e      ', 3, N'Đã bảo trì', N'kay')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'234       ', 4, N'Tốt', N'bàn phím')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'34123     ', 1, N'Tốt', N'yasuo')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'5435      ', 2, N'Đang bảo trì', N'zoe')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'B005      ', 4, N'Đang bảo trì', N'sdafsdf')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'kkk09     ', 1, N'Đã bảo trì', N'Đèn thực hành lý')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'lkj       ', 14, N'Đã bảo trì', N'Màn hình PC')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'pca0      ', 1, N'Đã bảo trì', N'Màn hình giám sát')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'Q001aa    ', 1, N'Tốt', N'ádfasd')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'sdf       ', 0, N'Tốt', N'asdff')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'thuan2    ', 2, N'Đang bảo trì', N'Màn hình giám sát')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'thuanss   ', 2, N'Đã bảo trì', N'Màn hình giám sát thuan')
INSERT [dbo].[kiemke_csvcphong] ([makiemke], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'ww        ', 1, N'Bỏ', N'dang')
GO
INSERT [dbo].[phonghoc] ([tenphong], [maphong], [tinhtrangphong], [dientich], [soluonghocsinh], [tinhtrangkiemkecuaphong]) VALUES (N'Kho', N'0000      ', N'Hỏng', N'45m2      ', 45, 0)
INSERT [dbo].[phonghoc] ([tenphong], [maphong], [tinhtrangphong], [dientich], [soluonghocsinh], [tinhtrangkiemkecuaphong]) VALUES (N'Phòng Đèn', N'0001      ', N'Tốt', N'45m2      ', 25, 0)
INSERT [dbo].[phonghoc] ([tenphong], [maphong], [tinhtrangphong], [dientich], [soluonghocsinh], [tinhtrangkiemkecuaphong]) VALUES (N'Phòng Bàn', N'0002      ', N'Tốt', N'45m2      ', 35, 0)
INSERT [dbo].[phonghoc] ([tenphong], [maphong], [tinhtrangphong], [dientich], [soluonghocsinh], [tinhtrangkiemkecuaphong]) VALUES (N'Phòng Quat', N'0003      ', N'Hỏng', N'45m2      ', 25, 0)
INSERT [dbo].[phonghoc] ([tenphong], [maphong], [tinhtrangphong], [dientich], [soluonghocsinh], [tinhtrangkiemkecuaphong]) VALUES (N'Phòng Màn hình', N'0004      ', N'Tốt', N'45m2      ', 15, 0)
INSERT [dbo].[phonghoc] ([tenphong], [maphong], [tinhtrangphong], [dientich], [soluonghocsinh], [tinhtrangkiemkecuaphong]) VALUES (N'Bảo trì', N'123       ', N'Hỏng', N'45        ', 123, 0)
INSERT [dbo].[phonghoc] ([tenphong], [maphong], [tinhtrangphong], [dientich], [soluonghocsinh], [tinhtrangkiemkecuaphong]) VALUES (N'thuan', N'1231      ', N'Tốt', N'23        ', 234, 0)
INSERT [dbo].[phonghoc] ([tenphong], [maphong], [tinhtrangphong], [dientich], [soluonghocsinh], [tinhtrangkiemkecuaphong]) VALUES (N'C0mot', N'C01       ', N'Tốt', N'223       ', 443, 0)
INSERT [dbo].[phonghoc] ([tenphong], [maphong], [tinhtrangphong], [dientich], [soluonghocsinh], [tinhtrangkiemkecuaphong]) VALUES (N'C02', N'c02       ', N'Tốt', N'30        ', 12, 0)
GO
INSERT [dbo].[taikhoan] ([idgiaovien], [tengiaovien], [chucvu], [matkhau], [kichhoat]) VALUES (N'1         ', N'number', N'Giáo viên', N'1212      ', N'DKH')
INSERT [dbo].[taikhoan] ([idgiaovien], [tengiaovien], [chucvu], [matkhau], [kichhoat]) VALUES (N'12345     ', N'Thuận', N'Quản lý', N'1212      ', N'DKH')
INSERT [dbo].[taikhoan] ([idgiaovien], [tengiaovien], [chucvu], [matkhau], [kichhoat]) VALUES (N'6789      ', N'Dâng', N'Giáo viên', N'1212      ', N'DKH')
INSERT [dbo].[taikhoan] ([idgiaovien], [tengiaovien], [chucvu], [matkhau], [kichhoat]) VALUES (N'admin     ', N'admin', N'Quản lý', N'1212      ', N'DKH')
GO
INSERT [dbo].[xuatvanban] ([loaivanban], [mavanban], [idgiaovien], [ngaybaotri], [bensuachua], [nguoidaidien], [sdt], [diachi], [ngayhoanthanh]) VALUES (N'Biên bản kiểm kê', N'12222     ', N'12345     ', CAST(N'2020-04-05' AS Date), NULL, N'Thuận', NULL, NULL, NULL)
INSERT [dbo].[xuatvanban] ([loaivanban], [mavanban], [idgiaovien], [ngaybaotri], [bensuachua], [nguoidaidien], [sdt], [diachi], [ngayhoanthanh]) VALUES (N'Biên bản kiểm kê', N'123123    ', N'6789      ', CAST(N'2020-12-12' AS Date), NULL, N'Dâng', NULL, NULL, NULL)
INSERT [dbo].[xuatvanban] ([loaivanban], [mavanban], [idgiaovien], [ngaybaotri], [bensuachua], [nguoidaidien], [sdt], [diachi], [ngayhoanthanh]) VALUES (N'Biên bản kiểm kê', N'1231231   ', N'6789      ', CAST(N'2020-12-12' AS Date), NULL, N'Dâng', NULL, NULL, NULL)
INSERT [dbo].[xuatvanban] ([loaivanban], [mavanban], [idgiaovien], [ngaybaotri], [bensuachua], [nguoidaidien], [sdt], [diachi], [ngayhoanthanh]) VALUES (N'Biên bản bảo trì', N'12344     ', N'6789      ', CAST(N'2020-12-21' AS Date), N'ègsd', N'1341dfs', N'3452345   ', N'ádfasdf', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[xuatvanban] ([loaivanban], [mavanban], [idgiaovien], [ngaybaotri], [bensuachua], [nguoidaidien], [sdt], [diachi], [ngayhoanthanh]) VALUES (N'Biên bản bảo trì', N'2121      ', N'12345     ', CAST(N'2020-05-02' AS Date), N'company', N'jonh', N'0900900000', N'cần thơ', CAST(N'2021-01-01' AS Date))
INSERT [dbo].[xuatvanban] ([loaivanban], [mavanban], [idgiaovien], [ngaybaotri], [bensuachua], [nguoidaidien], [sdt], [diachi], [ngayhoanthanh]) VALUES (N'Biên bản bảo trì', N'2121212   ', N'12345     ', CAST(N'2020-08-01' AS Date), N'đá', N'sdfa', N'0202000   ', N'ssdf', CAST(N'2020-09-01' AS Date))
INSERT [dbo].[xuatvanban] ([loaivanban], [mavanban], [idgiaovien], [ngaybaotri], [bensuachua], [nguoidaidien], [sdt], [diachi], [ngayhoanthanh]) VALUES (N'Biên bản kiểm kê', N'2222222   ', N'12345     ', CAST(N'2021-12-12' AS Date), NULL, N'Thuận', NULL, NULL, NULL)
INSERT [dbo].[xuatvanban] ([loaivanban], [mavanban], [idgiaovien], [ngaybaotri], [bensuachua], [nguoidaidien], [sdt], [diachi], [ngayhoanthanh]) VALUES (N'Biên bản kiểm kê', N'312       ', N'12345     ', CAST(N'2999-04-05' AS Date), NULL, N'Thuận', NULL, NULL, NULL)
INSERT [dbo].[xuatvanban] ([loaivanban], [mavanban], [idgiaovien], [ngaybaotri], [bensuachua], [nguoidaidien], [sdt], [diachi], [ngayhoanthanh]) VALUES (N'Biên bản kiểm kê', N'333       ', N'12345     ', CAST(N'2024-01-01' AS Date), NULL, N'Thuận', NULL, NULL, NULL)
INSERT [dbo].[xuatvanban] ([loaivanban], [mavanban], [idgiaovien], [ngaybaotri], [bensuachua], [nguoidaidien], [sdt], [diachi], [ngayhoanthanh]) VALUES (N'Biên bản kiểm kê', N'aaaaa     ', N'6789      ', CAST(N'2020-01-01' AS Date), NULL, N'Dâng', NULL, NULL, NULL)
INSERT [dbo].[xuatvanban] ([loaivanban], [mavanban], [idgiaovien], [ngaybaotri], [bensuachua], [nguoidaidien], [sdt], [diachi], [ngayhoanthanh]) VALUES (N'Biên bản bảo trì', N'aaaaads   ', N'12345     ', CAST(N'2020-01-01' AS Date), N'adsfa', N'sdfa', N'34234234  ', N'dfasdf', CAST(N'2020-12-12' AS Date))
INSERT [dbo].[xuatvanban] ([loaivanban], [mavanban], [idgiaovien], [ngaybaotri], [bensuachua], [nguoidaidien], [sdt], [diachi], [ngayhoanthanh]) VALUES (N'Biên bản kiểm kê', N'lufi      ', N'6789      ', CAST(N'2023-01-01' AS Date), NULL, N'Dâng', NULL, NULL, NULL)
INSERT [dbo].[xuatvanban] ([loaivanban], [mavanban], [idgiaovien], [ngaybaotri], [bensuachua], [nguoidaidien], [sdt], [diachi], [ngayhoanthanh]) VALUES (N'Biên bản bảo trì', N'no07      ', N'12345     ', CAST(N'2021-12-12' AS Date), N'dabg', N'dabf', N'435234    ', N'cantho', CAST(N'2021-12-21' AS Date))
INSERT [dbo].[xuatvanban] ([loaivanban], [mavanban], [idgiaovien], [ngaybaotri], [bensuachua], [nguoidaidien], [sdt], [diachi], [ngayhoanthanh]) VALUES (N'Biên bản bảo trì', N'no1       ', N'12345     ', CAST(N'2020-12-12' AS Date), N'thuan', N'dang', N'121212121 ', N'cantho', CAST(N'2020-12-21' AS Date))
INSERT [dbo].[xuatvanban] ([loaivanban], [mavanban], [idgiaovien], [ngaybaotri], [bensuachua], [nguoidaidien], [sdt], [diachi], [ngayhoanthanh]) VALUES (N'Biên bản bảo trì', N'no2       ', N'12345     ', CAST(N'2020-10-11' AS Date), N'dang', N'dang', N'3232323   ', N'cantho', CAST(N'2020-11-11' AS Date))
INSERT [dbo].[xuatvanban] ([loaivanban], [mavanban], [idgiaovien], [ngaybaotri], [bensuachua], [nguoidaidien], [sdt], [diachi], [ngayhoanthanh]) VALUES (N'Biên bản bảo trì', N'no3       ', N'12345     ', CAST(N'2020-06-11' AS Date), N'dang', N'dang', N'042323    ', N'cantho', CAST(N'2020-07-11' AS Date))
INSERT [dbo].[xuatvanban] ([loaivanban], [mavanban], [idgiaovien], [ngaybaotri], [bensuachua], [nguoidaidien], [sdt], [diachi], [ngayhoanthanh]) VALUES (N'Biên bản kiểm kê', N'zê        ', N'12345     ', CAST(N'2022-01-01' AS Date), NULL, N'Thuận', NULL, NULL, NULL)
GO
INSERT [dbo].[xuatvanban_csvc] ([macsvc], [mavanban], [mota]) VALUES (N'uiuiui    ', N'no1       ', N'uuuuuuuuuu')
INSERT [dbo].[xuatvanban_csvc] ([macsvc], [mavanban], [mota]) VALUES (N'thuanss   ', N'no1       ', N'iiiiiiiiiiii')
INSERT [dbo].[xuatvanban_csvc] ([macsvc], [mavanban], [mota]) VALUES (N'Q006      ', N'no1       ', N'null')
INSERT [dbo].[xuatvanban_csvc] ([macsvc], [mavanban], [mota]) VALUES (N'MH07      ', N'no3       ', N'1111')
INSERT [dbo].[xuatvanban_csvc] ([macsvc], [mavanban], [mota]) VALUES (N'MH06      ', N'no3       ', N'2222')
INSERT [dbo].[xuatvanban_csvc] ([macsvc], [mavanban], [mota]) VALUES (N'MH08      ', N'no3       ', N'null')
INSERT [dbo].[xuatvanban_csvc] ([macsvc], [mavanban], [mota]) VALUES (N'B005      ', N'aaaaads   ', N'null')
INSERT [dbo].[xuatvanban_csvc] ([macsvc], [mavanban], [mota]) VALUES (N'Q006      ', N'2121212   ', N'null')
INSERT [dbo].[xuatvanban_csvc] ([macsvc], [mavanban], [mota]) VALUES (N'B002      ', N'12344     ', N'null')
INSERT [dbo].[xuatvanban_csvc] ([macsvc], [mavanban], [mota]) VALUES (N'5435      ', N'2121      ', N'null')
INSERT [dbo].[xuatvanban_csvc] ([macsvc], [mavanban], [mota]) VALUES (N'Q004      ', N'no2       ', N'qw')
INSERT [dbo].[xuatvanban_csvc] ([macsvc], [mavanban], [mota]) VALUES (N'pca0      ', N'no2       ', N'wq')
INSERT [dbo].[xuatvanban_csvc] ([macsvc], [mavanban], [mota]) VALUES (N'Q005      ', N'no2       ', N'null')
INSERT [dbo].[xuatvanban_csvc] ([macsvc], [mavanban], [mota]) VALUES (N'D004      ', N'no07      ', N'hư lắm')
INSERT [dbo].[xuatvanban_csvc] ([macsvc], [mavanban], [mota]) VALUES (N'D003      ', N'no07      ', N'hư vừa')
INSERT [dbo].[xuatvanban_csvc] ([macsvc], [mavanban], [mota]) VALUES (N'lkj       ', N'no07      ', N'hư vcl')
GO
INSERT [dbo].[xuatvanban_kiemke] ([mavanban], [tengiaovien], [chucvu], [maphong], [tinhtrangphong], [ngaykiemke]) VALUES (N'12222     ', N'Thuận', N'Quản lý', N'0004      ', N'Tốt', CAST(N'2020-04-05' AS Date))
INSERT [dbo].[xuatvanban_kiemke] ([mavanban], [tengiaovien], [chucvu], [maphong], [tinhtrangphong], [ngaykiemke]) VALUES (N'123123    ', N'Dâng', N'Giáo viên', N'0004      ', N'Tốt', CAST(N'2020-12-12' AS Date))
INSERT [dbo].[xuatvanban_kiemke] ([mavanban], [tengiaovien], [chucvu], [maphong], [tinhtrangphong], [ngaykiemke]) VALUES (N'1231231   ', N'Dâng', N'Giáo viên', N'0002      ', N'Tốt', CAST(N'2020-12-12' AS Date))
INSERT [dbo].[xuatvanban_kiemke] ([mavanban], [tengiaovien], [chucvu], [maphong], [tinhtrangphong], [ngaykiemke]) VALUES (N'2222222   ', N'Thuận', N'Quản lý', N'0000      ', N'Tốt', CAST(N'2021-12-12' AS Date))
INSERT [dbo].[xuatvanban_kiemke] ([mavanban], [tengiaovien], [chucvu], [maphong], [tinhtrangphong], [ngaykiemke]) VALUES (N'312       ', N'Thuận', N'Quản lý', N'0000      ', N'Hỏng', CAST(N'2999-04-05' AS Date))
INSERT [dbo].[xuatvanban_kiemke] ([mavanban], [tengiaovien], [chucvu], [maphong], [tinhtrangphong], [ngaykiemke]) VALUES (N'333       ', N'Thuận', N'Quản lý', N'0000      ', N'Hỏng', CAST(N'2024-01-01' AS Date))
INSERT [dbo].[xuatvanban_kiemke] ([mavanban], [tengiaovien], [chucvu], [maphong], [tinhtrangphong], [ngaykiemke]) VALUES (N'aaaaa     ', N'Dâng', N'Giáo viên', N'0003      ', N'Hỏng', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[xuatvanban_kiemke] ([mavanban], [tengiaovien], [chucvu], [maphong], [tinhtrangphong], [ngaykiemke]) VALUES (N'lufi      ', N'Dâng', N'Giáo viên', N'0000      ', N'Hỏng', CAST(N'2023-01-01' AS Date))
INSERT [dbo].[xuatvanban_kiemke] ([mavanban], [tengiaovien], [chucvu], [maphong], [tinhtrangphong], [ngaykiemke]) VALUES (N'zê        ', N'Thuận', N'Quản lý', N'0000      ', N'Hỏng', CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'123123    ', N'MH06      ', 100, N'Đang bảo trì', N'Màn hình TV')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'123123    ', N'MH07      ', 86, N'Đã bảo trì', N'Màn hình PC')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'123123    ', N'MH08      ', 47, N'Đã bảo trì', N'Màn hình giám sát')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'123123    ', N'thuanss   ', 2, N'Đã bảo trì', N'Màn hình giám sát thuan')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'aaaaa     ', N'Q004      ', 99, N'Đã bảo trì', N'Quạt trần')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'aaaaa     ', N'Q005      ', 8, N'Đã bảo trì', N'Quạt hơi nước')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'aaaaa     ', N'Q006      ', 100, N'Đã bảo trì', N'Quạt thường')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'2222222   ', N'B005      ', 4, N'Đang bảo trì', N'sdafsdf')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'2222222   ', N'kkk09     ', 1, N'Đã bảo trì', N'Đèn thực hành lý')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'2222222   ', N'lkj       ', 14, N'Đã bảo trì', N'Màn hình PC')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'2222222   ', N'pca0      ', 1, N'Đã bảo trì', N'Màn hình giám sát')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'2222222   ', N'Q001aa    ', 1, N'Tốt', N'ádfasd')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'2222222   ', N'thuan2    ', 2, N'Đang bảo trì', N'Màn hình giám sát')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'2222222   ', N'thuanss   ', 2, N'Đã bảo trì', N'Màn hình giám sát thuan')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'2222222   ', N'ww        ', 1, N'Bỏ', N'dang')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'1231231   ', N'B001      ', 10, N'Đã bảo trì', N'Bàn học')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'1231231   ', N'B002      ', 18, N'Bảo trì', N'Bàn thực hành lý')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'1231231   ', N'B003      ', 10, N'Đã bảo trì', N'Bàn thực hành sinh')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'1231231   ', N'B004      ', 9, N'Đang bảo trì', N'Bàn thực hành địa')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'123       ', 3, N'Tốt', N'kitt')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'123e      ', 3, N'Tốt', N'kay')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'zê        ', N'123       ', 3, N'Đã bảo trì', N'kitt')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'zê        ', N'123e      ', 3, N'Đã bảo trì', N'kay')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'zê        ', N'234       ', 4, N'Tốt', N'bàn phím')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'zê        ', N'34123     ', 1, N'Tốt', N'yasuo')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'zê        ', N'5435      ', 2, N'Đang bảo trì', N'zoe')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'zê        ', N'B005      ', 4, N'Đang bảo trì', N'sdafsdf')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'zê        ', N'kkk09     ', 1, N'Đã bảo trì', N'Đèn thực hành lý')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'zê        ', N'lkj       ', 14, N'Đã bảo trì', N'Màn hình PC')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'zê        ', N'pca0      ', 1, N'Đã bảo trì', N'Màn hình giám sát')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'zê        ', N'Q001aa    ', 1, N'Tốt', N'ádfasd')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'zê        ', N'sdf       ', 0, N'Tốt', N'asdff')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'zê        ', N'thuan2    ', 2, N'Đang bảo trì', N'Màn hình giám sát')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'zê        ', N'thuanss   ', 2, N'Đã bảo trì', N'Màn hình giám sát thuan')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'zê        ', N'ww        ', 1, N'Bỏ', N'dang')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'123       ', 3, N'Đã bảo trì', N'kitt')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'123e      ', 3, N'Đã bảo trì', N'kay')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'234       ', 4, N'Tốt', N'bàn phím')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'34123     ', 1, N'Tốt', N'yasuo')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'5435      ', 2, N'Đang bảo trì', N'zoe')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'B005      ', 4, N'Đang bảo trì', N'sdafsdf')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'kkk09     ', 1, N'Đã bảo trì', N'Đèn thực hành lý')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'lkj       ', 14, N'Đã bảo trì', N'Màn hình PC')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'pca0      ', 1, N'Đã bảo trì', N'Màn hình giám sát')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'Q001aa    ', 1, N'Tốt', N'ádfasd')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'sdf       ', 0, N'Tốt', N'asdff')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'thuan2    ', 2, N'Đang bảo trì', N'Màn hình giám sát')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'thuanss   ', 2, N'Đã bảo trì', N'Màn hình giám sát thuan')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'333       ', N'ww        ', 1, N'Bỏ', N'dang')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'5435      ', 2, N'Tốt', N'zoe')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'B005      ', 4, N'Đang bảo trì', N'sdafsdf')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'kkk09     ', 1, N'Đã bảo trì', N'Đèn thực hành lý')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'lkj       ', 14, N'Đã bảo trì', N'Màn hình PC')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'pca0      ', 1, N'Đã bảo trì', N'Màn hình giám sát')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'Q001aa    ', 1, N'Tốt', N'ádfasd')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'sdf       ', 0, N'Tốt', N'asdff')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'thuan2    ', 2, N'Đang bảo trì', N'Màn hình giám sát')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'thuanss   ', 2, N'Đã bảo trì', N'Màn hình giám sát thuan')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'ww        ', 1, N'Bỏ', N'dang')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'312       ', N'34123     ', 1, N'Tốt', N'yasuo')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'lufi      ', N'123       ', 3, N'Đã bảo trì', N'kitt')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'lufi      ', N'123e      ', 3, N'Đã bảo trì', N'kay')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'lufi      ', N'234       ', 4, N'Tốt', N'bàn phím')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'lufi      ', N'34123     ', 1, N'Tốt', N'yasuo')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'lufi      ', N'5435      ', 2, N'Đang bảo trì', N'zoe')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'lufi      ', N'B005      ', 4, N'Đang bảo trì', N'sdafsdf')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'lufi      ', N'kkk09     ', 1, N'Đã bảo trì', N'Đèn thực hành lý')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'lufi      ', N'lkj       ', 14, N'Đã bảo trì', N'Màn hình PC')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'lufi      ', N'pca0      ', 1, N'Đã bảo trì', N'Màn hình giám sát')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'lufi      ', N'Q001aa    ', 1, N'Tốt', N'ádfasd')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'lufi      ', N'sdf       ', 0, N'Tốt', N'asdff')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'lufi      ', N'thuan2    ', 2, N'Đang bảo trì', N'Màn hình giám sát')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'lufi      ', N'thuanss   ', 2, N'Đã bảo trì', N'Màn hình giám sát thuan')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'lufi      ', N'ww        ', 1, N'Bỏ', N'dang')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'12222     ', N'MH06      ', 100, N'Đã bảo trì', N'Màn hình TV')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'12222     ', N'MH07      ', 86, N'Đã bảo trì', N'Màn hình PC')
INSERT [dbo].[xuatvanban_kiemke_csvc] ([mavanban], [macsvc], [soluong], [tinhtrangcsvc], [tencsvc]) VALUES (N'12222     ', N'MH08      ', 47, N'Đã bảo trì', N'Màn hình giám sát')
GO
ALTER TABLE [dbo].[baotrivasuachua]  WITH CHECK ADD  CONSTRAINT [FK_baotrivasuachua_cosovatchat] FOREIGN KEY([macsvc])
REFERENCES [dbo].[cosovatchat] ([macsvc])
GO
ALTER TABLE [dbo].[baotrivasuachua] CHECK CONSTRAINT [FK_baotrivasuachua_cosovatchat]
GO
ALTER TABLE [dbo].[baotrivasuachua]  WITH CHECK ADD  CONSTRAINT [FK_baotrivasuachua_xuatvanban] FOREIGN KEY([mabaotri])
REFERENCES [dbo].[xuatvanban] ([mavanban])
GO
ALTER TABLE [dbo].[baotrivasuachua] CHECK CONSTRAINT [FK_baotrivasuachua_xuatvanban]
GO
ALTER TABLE [dbo].[cosovatchat]  WITH CHECK ADD  CONSTRAINT [FK_cosovatchat_phonghoc] FOREIGN KEY([maphong])
REFERENCES [dbo].[phonghoc] ([maphong])
GO
ALTER TABLE [dbo].[cosovatchat] CHECK CONSTRAINT [FK_cosovatchat_phonghoc]
GO
ALTER TABLE [dbo].[kiemke]  WITH CHECK ADD  CONSTRAINT [FK_kiemke_phonghoc] FOREIGN KEY([maphong])
REFERENCES [dbo].[phonghoc] ([maphong])
GO
ALTER TABLE [dbo].[kiemke] CHECK CONSTRAINT [FK_kiemke_phonghoc]
GO
ALTER TABLE [dbo].[kiemke_csvcphong]  WITH CHECK ADD  CONSTRAINT [FK_kiemke_csvcphong_kiemke] FOREIGN KEY([makiemke])
REFERENCES [dbo].[kiemke] ([makiemke])
GO
ALTER TABLE [dbo].[kiemke_csvcphong] CHECK CONSTRAINT [FK_kiemke_csvcphong_kiemke]
GO
ALTER TABLE [dbo].[xuatvanban]  WITH CHECK ADD  CONSTRAINT [FK_xuatvanban_taikhoan] FOREIGN KEY([idgiaovien])
REFERENCES [dbo].[taikhoan] ([idgiaovien])
GO
ALTER TABLE [dbo].[xuatvanban] CHECK CONSTRAINT [FK_xuatvanban_taikhoan]
GO
ALTER TABLE [dbo].[xuatvanban_csvc]  WITH CHECK ADD  CONSTRAINT [FK_xuatvanban_csvc_xuatvanban] FOREIGN KEY([mavanban])
REFERENCES [dbo].[xuatvanban] ([mavanban])
GO
ALTER TABLE [dbo].[xuatvanban_csvc] CHECK CONSTRAINT [FK_xuatvanban_csvc_xuatvanban]
GO
USE [master]
GO
ALTER DATABASE [quanlycosovatchat] SET  READ_WRITE 
GO
