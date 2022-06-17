USE [master]
GO
/****** Object:  Database [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1]    Script Date: 3/17/2022 10:49:30 AM ******/
CREATE DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET QUERY_STORE = OFF
GO
USE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1]
GO
/****** Object:  Table [dbo].[Car]    Script Date: 3/17/2022 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[carID] [nvarchar](45) NOT NULL,
	[typeID] [nvarchar](45) NULL,
	[carName] [nvarchar](45) NOT NULL,
	[brandID] [nvarchar](45) NULL,
	[description] [nvarchar](45) NOT NULL,
	[purchaseDate] [nvarchar](10) NULL,
	[quantity] [int] NOT NULL,
	[imgURL] [nvarchar](1000) NOT NULL,
	[price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[carID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car_brand]    Script Date: 3/17/2022 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car_brand](
	[brandID] [nvarchar](45) NOT NULL,
	[brandName] [nvarchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[brandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car_type]    Script Date: 3/17/2022 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car_type](
	[typeID] [nvarchar](45) NOT NULL,
	[typeType] [nvarchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 3/17/2022 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[customerID] [nvarchar](45) NOT NULL,
	[roleID] [nvarchar](45) NULL,
	[password] [nvarchar](45) NOT NULL,
	[fullName] [nvarchar](45) NOT NULL,
	[phone] [nvarchar](45) NOT NULL,
	[place] [nvarchar](45) NOT NULL,
	[country] [nvarchar](45) NOT NULL,
	[email] [nvarchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rent]    Script Date: 3/17/2022 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rent](
	[rentID] [nvarchar](45) NOT NULL,
	[amount] [float] NOT NULL,
	[customerID] [nvarchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[rentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rent_Car]    Script Date: 3/17/2022 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rent_Car](
	[carID] [nvarchar](45) NOT NULL,
	[quantity] [int] NOT NULL,
	[rentID] [nvarchar](45) NOT NULL,
	[pickupDate] [nvarchar](10) NOT NULL,
	[returnDate] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[carID] ASC,
	[rentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 3/17/2022 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[roleID] [nvarchar](45) NOT NULL,
	[roleName] [nvarchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Car] ([carID], [typeID], [carName], [brandID], [description], [purchaseDate], [quantity], [imgURL], [price]) VALUES (N'1', N'1', N'Bugatti La Voiture Noire', N'3', N'Ducati Desc', N'2011-05-12', 3, N'https://scontent.fsgn2-1.fna.fbcdn.net/v/t1.15752-9/275020532_663146101598203_3311210581397220273_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=ae9488&_nc_ohc=B1LeIMf8A6YAX8K2BBK&_nc_ht=scontent.fsgn2-1.fna&oh=03_AVIeKJ1qlblLjfufNAqTPT2YjrE4KO41jg6YjL0-gmmNaA&oe=624F7987', 200)
GO
INSERT [dbo].[Car] ([carID], [typeID], [carName], [brandID], [description], [purchaseDate], [quantity], [imgURL], [price]) VALUES (N'10', N'3', N'Volvo VNL 780', N'2', N'Volvo VNL 780 Desc', N'2001-05-25', 5, N'https://scontent.fsgn2-1.fna.fbcdn.net/v/t1.15752-9/274952081_546933769849581_5958366868388402397_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=ae9488&_nc_ohc=gwzSKR8yKscAX-LeLvE&_nc_ht=scontent.fsgn2-1.fna&oh=03_AVJJZHs3d872dfop7qJmZ5j_qoL3HEhfJu-XjKRO4Z_C1A&oe=62517CD8', 2000)
GO
INSERT [dbo].[Car] ([carID], [typeID], [carName], [brandID], [description], [purchaseDate], [quantity], [imgURL], [price]) VALUES (N'11', N'1', N'Xe Dap Dien', N'1', N'Xe Dap Dien Desc', N'2009-12-10', 5, N'https://scontent.fsgn2-4.fna.fbcdn.net/v/t1.15752-9/274940450_702800377766276_2788537778915235239_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=ae9488&_nc_ohc=R1VHKCkI5aQAX89pvcx&_nc_ht=scontent.fsgn2-4.fna&oh=03_AVLA00Ooiq1jRvPTrztcXi91I4U9afON9T-qhoe06q_flQ&oe=62520EB5', 99999)
GO
INSERT [dbo].[Car] ([carID], [typeID], [carName], [brandID], [description], [purchaseDate], [quantity], [imgURL], [price]) VALUES (N'2', N'2', N'Ferrari Enzo 2002', N'6', N'Ferrari Desc', N'2001-11-29', 5, N'https://scontent.xx.fbcdn.net/v/t1.15752-9/275500011_2774127886230416_1921560058722045248_n.jpg?stp=dst-jpg_p206x206&_nc_cat=108&ccb=1-5&_nc_sid=aee45a&_nc_ohc=JACk3SQvHvUAX_NUPLd&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AVJzj402ocJZrCCgL2gDRq5OSgHMYNnFNI317if5xcWYuA&oe=6250ED98', 200)
GO
INSERT [dbo].[Car] ([carID], [typeID], [carName], [brandID], [description], [purchaseDate], [quantity], [imgURL], [price]) VALUES (N'3', N'1', N'Mercedes-Benz E-Class', N'4', N'Mercedes Desc', N'2001-05-04', 5, N'https://scontent.fsgn2-3.fna.fbcdn.net/v/t1.15752-9/274372864_331201869050247_1407127284848730743_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=ae9488&_nc_ohc=cqixdgAI8NYAX-hYcor&_nc_ht=scontent.fsgn2-3.fna&oh=03_AVLFpA9PYXyt_kgvx-WgV87nzzGJ5bZPFpWPIITQmfkWEA&oe=625127CD', 200)
GO
INSERT [dbo].[Car] ([carID], [typeID], [carName], [brandID], [description], [purchaseDate], [quantity], [imgURL], [price]) VALUES (N'4', N'1', N'Ford Mustang', N'5', N'Prelude Desc', N'2020-10-14', 5, N'https://scontent.fsgn2-1.fna.fbcdn.net/v/t1.15752-9/275158482_499695335210149_3498280586892641324_n.png?_nc_cat=105&ccb=1-5&_nc_sid=ae9488&_nc_ohc=pCeoOBn0LuQAX_dqQZY&_nc_ht=scontent.fsgn2-1.fna&oh=03_AVJV3818u5xegZexODbQa9a5XZRjbmLNzWks8yylsuL3Bg&oe=6251D29C', 200)
GO
INSERT [dbo].[Car] ([carID], [typeID], [carName], [brandID], [description], [purchaseDate], [quantity], [imgURL], [price]) VALUES (N'5', N'2', N'Bugati Chiron', N'3', N'Colt Desc', N'2019-02-16', 5, N'https://scontent.fsgn2-2.fna.fbcdn.net/v/t1.15752-9/275218574_488865169537934_3431839815543467555_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=ae9488&_nc_ohc=flP1yVZOVW0AX_T1Z6U&_nc_ht=scontent.fsgn2-2.fna&oh=03_AVKKnmDr8_MpYrI-0QYFUN7i84FqWLMNW87aaml_xW3d3A&oe=624F0880', 200)
GO
INSERT [dbo].[Car] ([carID], [typeID], [carName], [brandID], [description], [purchaseDate], [quantity], [imgURL], [price]) VALUES (N'6', N'1', N'Lamborghini Aventador', N'1', N'Lamborghini Desc', N'2015-10-06', 5, N'https://giaxeoto.vn/admin/upload/images/resize/640-lamborghini-aventador-s-lp740-4.jpg', 2000)
GO
INSERT [dbo].[Car] ([carID], [typeID], [carName], [brandID], [description], [purchaseDate], [quantity], [imgURL], [price]) VALUES (N'7', N'1', N'Ferrari F40', N'6', N'Ferrari F40 Desc', N'2019-12-09', 5, N'https://photo-cms-kienthuc.zadn.vn/zoom/800/uploaded/ctvlanbanh/2021_02_10/ferr/sieu-xe-ferrari-f40-nhai-nhu-xin-chao-ban-chi-573-trieu-dong-hinh-8.png', 2000)
GO
INSERT [dbo].[Car] ([carID], [typeID], [carName], [brandID], [description], [purchaseDate], [quantity], [imgURL], [price]) VALUES (N'8', N'1', N'Lamborghini Urus', N'1', N'Lamborghini Urus Desc', N'2012-10-10', 5, N'https://scontent.fsgn2-4.fna.fbcdn.net/v/t1.15752-9/275320274_679259290155997_4434142725261164998_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=ae9488&_nc_ohc=VQq7AY_y32cAX8wXMzs&tn=DHF6CmtUpKM_RAGI&_nc_ht=scontent.fsgn2-4.fna&oh=03_AVKuJQU2ZB27zgEDHtNWeQwvTQz5YLThrSIjKyJ4ULWpCA&oe=624F7613', 2000)
GO
INSERT [dbo].[Car] ([carID], [typeID], [carName], [brandID], [description], [purchaseDate], [quantity], [imgURL], [price]) VALUES (N'9', N'3', N'Volvo N86', N'2', N'Volvo N86 Desc', N'2013-11-11', 5, N'https://live.staticflickr.com/1797/43187837975_73a950ccbd_b.jpg', 2000)
GO
INSERT [dbo].[Car_brand] ([brandID], [brandName]) VALUES (N'1', N'Lamborghini')
GO
INSERT [dbo].[Car_brand] ([brandID], [brandName]) VALUES (N'2', N'Volvo')
GO
INSERT [dbo].[Car_brand] ([brandID], [brandName]) VALUES (N'3', N'Bugatti')
GO
INSERT [dbo].[Car_brand] ([brandID], [brandName]) VALUES (N'4', N'Mercedes')
GO
INSERT [dbo].[Car_brand] ([brandID], [brandName]) VALUES (N'5', N'Ford')
GO
INSERT [dbo].[Car_brand] ([brandID], [brandName]) VALUES (N'6', N'Ferrari')
GO
INSERT [dbo].[Car_type] ([typeID], [typeType]) VALUES (N'1', N'Sport')
GO
INSERT [dbo].[Car_type] ([typeID], [typeType]) VALUES (N'2', N'Vans')
GO
INSERT [dbo].[Car_type] ([typeID], [typeType]) VALUES (N'3', N'Truck')
GO
INSERT [dbo].[Customers] ([customerID], [roleID], [password], [fullName], [phone], [place], [country], [email]) VALUES (N'admin', N'2', N'1', N'Gloriana Lenden', N'350-534-1154', N'59 Vidon Circle', N'Vietnam', N'glenden4@e-recht24.de')
GO
INSERT [dbo].[Customers] ([customerID], [roleID], [password], [fullName], [phone], [place], [country], [email]) VALUES (N'thai', N'1', N'1', N'thai', N'1234', N'Sai Gon', N'VN', N'tuanblep0298@gmail.com')
GO
INSERT [dbo].[Customers] ([customerID], [roleID], [password], [fullName], [phone], [place], [country], [email]) VALUES (N'tri', N'1', N'1', N'Shannon Ragsdall', N'463-670-6472', N'969 Fuller Place', N'Vietnam', N'sragsdall2@craigslist.org')
GO
INSERT [dbo].[Customers] ([customerID], [roleID], [password], [fullName], [phone], [place], [country], [email]) VALUES (N'truong', N'2', N'1', N'Dionisio Brushneen', N'239-867-7565', N'4992 Glendale Junction', N'Vietnam', N'dbrushneen3@ucoz.ru')
GO
INSERT [dbo].[Customers] ([customerID], [roleID], [password], [fullName], [phone], [place], [country], [email]) VALUES (N'tuan', N'1', N'1', N'Clarinda Murrill', N'846-546-1835', N'4896 Southridge Terrace', N'Vietnam', N'cmurrill0@smugmug.com')
GO
INSERT [dbo].[Customers] ([customerID], [roleID], [password], [fullName], [phone], [place], [country], [email]) VALUES (N'tung', N'2', N'1', N'Joey Van der Son', N'109-572-9282', N'13763 Sutteridge Junction', N'Vietnam', N'jvan1@cnn.com')
GO
INSERT [dbo].[Customers] ([customerID], [roleID], [password], [fullName], [phone], [place], [country], [email]) VALUES (N'tung1', N'1', N'1', N'Thanh Tung', N'0123456789', N'HCM', N'VietNam', N'tung@gmail.com')
GO
INSERT [dbo].[Customers] ([customerID], [roleID], [password], [fullName], [phone], [place], [country], [email]) VALUES (N'tung2', N'1', N'1', N'Thanh Tung', N'0123456789', N'HCM', N'VietNam', N'tung@gmail.com')
GO
INSERT [dbo].[Customers] ([customerID], [roleID], [password], [fullName], [phone], [place], [country], [email]) VALUES (N'tung3', N'1', N'1', N'Thanh Tung', N'0123456789', N'HCM', N'VietNam', N'tung@gmail.com')
GO
INSERT [dbo].[Customers] ([customerID], [roleID], [password], [fullName], [phone], [place], [country], [email]) VALUES (N'tung4', N'1', N'1', N'Thanh Tung', N'0123456789', N'HCM', N'VietNam', N'tung@gmail.com')
GO
INSERT [dbo].[Customers] ([customerID], [roleID], [password], [fullName], [phone], [place], [country], [email]) VALUES (N'tung5', N'1', N'1', N'Thanh Tung', N'0123456789', N'HCM', N'VietNam', N'tung@gmail.com')
GO
INSERT [dbo].[Customers] ([customerID], [roleID], [password], [fullName], [phone], [place], [country], [email]) VALUES (N'user', N'1', N'1', N'Nguyễn Anh Tuấn', N'0977994732', N'Sai Gon', N'VN', N'tuannase151159@fpt.edu.vn')
GO
INSERT [dbo].[Rent] ([rentID], [amount], [customerID]) VALUES (N'0', 400, N'tuan')
GO
INSERT [dbo].[Rent] ([rentID], [amount], [customerID]) VALUES (N'1', 400, N'tuan')
GO
INSERT [dbo].[Rent_Car] ([carID], [quantity], [rentID], [pickupDate], [returnDate]) VALUES (N'1', 1, N'0', N'2022-03-15', N'2022-03-17')
GO
INSERT [dbo].[Rent_Car] ([carID], [quantity], [rentID], [pickupDate], [returnDate]) VALUES (N'1', 1, N'1', N'2022-03-15', N'2022-03-17')
GO
INSERT [dbo].[Roles] ([roleID], [roleName]) VALUES (N'1', N'user')
GO
INSERT [dbo].[Roles] ([roleID], [roleName]) VALUES (N'2', N'admin')
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD FOREIGN KEY([brandID])
REFERENCES [dbo].[Car_brand] ([brandID])
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD FOREIGN KEY([typeID])
REFERENCES [dbo].[Car_type] ([typeID])
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD FOREIGN KEY([roleID])
REFERENCES [dbo].[Roles] ([roleID])
GO
ALTER TABLE [dbo].[Rent]  WITH CHECK ADD FOREIGN KEY([customerID])
REFERENCES [dbo].[Customers] ([customerID])
GO
ALTER TABLE [dbo].[Rent_Car]  WITH CHECK ADD FOREIGN KEY([carID])
REFERENCES [dbo].[Car] ([carID])
GO
ALTER TABLE [dbo].[Rent_Car]  WITH CHECK ADD FOREIGN KEY([rentID])
REFERENCES [dbo].[Rent] ([rentID])
GO
USE [master]
GO
ALTER DATABASE [PRJ301_SE1612_GroupPASSED_OnlineCarRentingWebsite1] SET  READ_WRITE 
GO
