USE [master]
GO
/****** Object:  Database [geziblogum]    Script Date: 05/28/2015 14:11:03 ******/
CREATE DATABASE [geziblogum] ON  PRIMARY 
( NAME = N'geziblogum', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\geziblogum.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'geziblogum_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\geziblogum_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [geziblogum] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [geziblogum].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [geziblogum] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [geziblogum] SET ANSI_NULLS OFF
GO
ALTER DATABASE [geziblogum] SET ANSI_PADDING OFF
GO
ALTER DATABASE [geziblogum] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [geziblogum] SET ARITHABORT OFF
GO
ALTER DATABASE [geziblogum] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [geziblogum] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [geziblogum] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [geziblogum] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [geziblogum] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [geziblogum] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [geziblogum] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [geziblogum] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [geziblogum] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [geziblogum] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [geziblogum] SET  DISABLE_BROKER
GO
ALTER DATABASE [geziblogum] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [geziblogum] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [geziblogum] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [geziblogum] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [geziblogum] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [geziblogum] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [geziblogum] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [geziblogum] SET  READ_WRITE
GO
ALTER DATABASE [geziblogum] SET RECOVERY SIMPLE
GO
ALTER DATABASE [geziblogum] SET  MULTI_USER
GO
ALTER DATABASE [geziblogum] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [geziblogum] SET DB_CHAINING OFF
GO
USE [geziblogum]
GO
/****** Object:  Table [dbo].[kullanicilar]    Script Date: 05/28/2015 14:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kullanicilar](
	[kullanici_id] [int] IDENTITY(1,1) NOT NULL,
	[adsoyad] [varchar](50) NOT NULL,
	[kullanici_adi] [varchar](50) NOT NULL,
	[sifre] [varchar](50) NOT NULL,
	[durum] [int] NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_kullanicilar] PRIMARY KEY CLUSTERED 
(
	[kullanici_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[kullanicilar] ON
INSERT [dbo].[kullanicilar] ([kullanici_id], [adsoyad], [kullanici_adi], [sifre], [durum], [email]) VALUES (1, N'ömer faruk dilek', N'omerfaruk_dilek', N'1234', 1, N'faruk-512@hotmail.com')
INSERT [dbo].[kullanicilar] ([kullanici_id], [adsoyad], [kullanici_adi], [sifre], [durum], [email]) VALUES (2, N'mehmet acet', N'mehmetact', N'123456', 0, N'mehmetacet@hotmail.com')
INSERT [dbo].[kullanicilar] ([kullanici_id], [adsoyad], [kullanici_adi], [sifre], [durum], [email]) VALUES (3, N'serhat yurdakul', N'serhat', N'5412', 0, N'serhatyurdakul@hotmail.com.tr')
INSERT [dbo].[kullanicilar] ([kullanici_id], [adsoyad], [kullanici_adi], [sifre], [durum], [email]) VALUES (4, N'fevzi altun', N'fevzi', N'1234', 0, N'fevzi@hotmail.com')
INSERT [dbo].[kullanicilar] ([kullanici_id], [adsoyad], [kullanici_adi], [sifre], [durum], [email]) VALUES (5, N'esra cengiz', N'esra', N'1234', 0, N'esra@hotmail.com')
INSERT [dbo].[kullanicilar] ([kullanici_id], [adsoyad], [kullanici_adi], [sifre], [durum], [email]) VALUES (6, N'gizem demir', N'gizem', N'1234', 0, N'gizem@hotmail.com')
INSERT [dbo].[kullanicilar] ([kullanici_id], [adsoyad], [kullanici_adi], [sifre], [durum], [email]) VALUES (7, N'merve tok', N'merve', N'1234', 0, N'merve@hotmail.com')
INSERT [dbo].[kullanicilar] ([kullanici_id], [adsoyad], [kullanici_adi], [sifre], [durum], [email]) VALUES (8, N'emre yiğit', N'emre', N'1234', 0, N'emreqhotmail.com')
INSERT [dbo].[kullanicilar] ([kullanici_id], [adsoyad], [kullanici_adi], [sifre], [durum], [email]) VALUES (9, N'fatih tülü', N'fatih', N'1234', 0, N'fatih@hotmail.com')
INSERT [dbo].[kullanicilar] ([kullanici_id], [adsoyad], [kullanici_adi], [sifre], [durum], [email]) VALUES (10, N'zeynep duman', N'zeynep', N'1234', 0, N'zeynep@hotmail.com')
SET IDENTITY_INSERT [dbo].[kullanicilar] OFF
/****** Object:  Table [dbo].[kategori]    Script Date: 05/28/2015 14:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kategori](
	[kategori_id] [int] IDENTITY(1,1) NOT NULL,
	[kategori_adi] [varchar](50) NOT NULL,
 CONSTRAINT [PK_kategori] PRIMARY KEY CLUSTERED 
(
	[kategori_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[kategori] ON
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (1, N'Adana')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (2, N'Adıyaman')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (3, N'Afyonkarahisar')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (4, N'Ağrı')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (5, N'Amasya')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (6, N'Ankara')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (7, N'Antalya')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (8, N'Artvin')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (9, N'Aydın')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (10, N'Balıkesir')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (11, N'Bilecik')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (12, N'Bingöl')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (13, N'Bitlis')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (14, N'Bolu')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (15, N'Burdur')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (16, N'Bursa')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (17, N'Çanakkale')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (18, N'Çankırı')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (19, N'Çorum')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (20, N'Denizli')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (21, N'Diyarbakır')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (22, N'Edirne')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (23, N'Elazığ')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (24, N'Erzincan')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (25, N'Erzurum')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (26, N'Eskişehir')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (27, N'Gaziantep')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (28, N'Giresun')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (29, N'Gümüşhane')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (30, N'Hakkari')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (31, N'Hatay')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (32, N'Isparta')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (33, N'Mersin')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (34, N'İstanbul')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (35, N'İzmir')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (36, N'Kars')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (37, N'Kastamonu')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (38, N'Kayseri')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (39, N'Kırklareli')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (40, N'Kırşehir')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (41, N'Kocaeli')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (42, N'Konya')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (43, N'Kütahya')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (44, N'Malatya')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (45, N'Manisa')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (46, N'Kahramanmaraş')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (47, N'Mardin')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (48, N'Muğla')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (49, N'Muş')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (50, N'Nevşehir')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (51, N'Niğde')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (52, N'Ordu')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (53, N'Rize')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (54, N'Sakarya')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (55, N'Samsun')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (56, N'Siirt')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (57, N'Sinop')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (58, N'Sivas')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (59, N'Tekirdağ')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (60, N'Tokat')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (61, N'Trabzon')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (62, N'Tunceli')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (63, N'Şanlıurfa')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (64, N'Uşak')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (65, N'Van')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (66, N'Yozgat')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (67, N'Zonguldak')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (68, N'Aksaray')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (69, N'Bayburt')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (70, N'Karaman')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (71, N'Kırıkkale')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (72, N'Batman')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (73, N'Şırnak')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (74, N'Bartın')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (75, N'Ardahan')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (76, N'Iğdır')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (77, N'Yalova')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (78, N'Karabük')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (79, N'Kilis')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (80, N'Osmaniye')
INSERT [dbo].[kategori] ([kategori_id], [kategori_adi]) VALUES (81, N'Düzce')
SET IDENTITY_INSERT [dbo].[kategori] OFF
/****** Object:  Table [dbo].[iletisim]    Script Date: 05/28/2015 14:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iletisim](
	[iletisim_id] [int] IDENTITY(1,1) NOT NULL,
	[gonderen_adi] [varchar](50) NOT NULL,
	[gonderen_mail] [varchar](50) NOT NULL,
	[gonderen_mesaj] [varchar](max) NOT NULL,
 CONSTRAINT [PK_iletisim] PRIMARY KEY CLUSTERED 
(
	[iletisim_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[iletisim] ON
INSERT [dbo].[iletisim] ([iletisim_id], [gonderen_adi], [gonderen_mail], [gonderen_mesaj]) VALUES (2, N'memati', N'fatihdilek@hotmail.com', N'site çok güzel olmuş oğlum eline sağlık masallah.Tekniğin iyi ama geliştirmen lazım.Geliştirdikten sonra gel yanıma.')
INSERT [dbo].[iletisim] ([iletisim_id], [gonderen_adi], [gonderen_mail], [gonderen_mesaj]) VALUES (6, N'furkan', N'furkan@hotmail.com', N'dfjkglşsdgjklfshldf')
INSERT [dbo].[iletisim] ([iletisim_id], [gonderen_adi], [gonderen_mail], [gonderen_mesaj]) VALUES (7, N'dssdd', N'ffffffff', N'fffffffffff')
INSERT [dbo].[iletisim] ([iletisim_id], [gonderen_adi], [gonderen_mail], [gonderen_mesaj]) VALUES (8, N'asdd', N'ffff', N'')
INSERT [dbo].[iletisim] ([iletisim_id], [gonderen_adi], [gonderen_mail], [gonderen_mesaj]) VALUES (9, N'asdd', N'ffff', N'dsdddd')
INSERT [dbo].[iletisim] ([iletisim_id], [gonderen_adi], [gonderen_mail], [gonderen_mesaj]) VALUES (13, N'GyrGH', N'rtyr', N'H')
SET IDENTITY_INSERT [dbo].[iletisim] OFF
/****** Object:  Table [dbo].[yorum]    Script Date: 05/28/2015 14:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[yorum](
	[yorum_id] [int] IDENTITY(1,1) NOT NULL,
	[makale_id] [int] NOT NULL,
	[kullanici_id] [int] NOT NULL,
	[yorum_tarih] [datetime] NOT NULL,
	[yorum] [varchar](max) NOT NULL,
 CONSTRAINT [PK_yorum] PRIMARY KEY CLUSTERED 
(
	[yorum_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[makale]    Script Date: 05/28/2015 14:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[makale](
	[makale_id] [int] IDENTITY(1,1) NOT NULL,
	[kullanici_id] [int] NOT NULL,
	[resim] [varchar](50) NOT NULL,
	[kategori_id] [int] NOT NULL,
	[makale_adi] [varchar](50) NOT NULL,
	[makale_tarih] [datetime] NOT NULL,
	[mekan_adi] [varchar](50) NOT NULL,
	[makale_ozet] [varchar](max) NULL,
	[makale] [varchar](max) NOT NULL,
	[onay] [int] NOT NULL,
 CONSTRAINT [PK_makale] PRIMARY KEY CLUSTERED 
(
	[makale_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[makale] ON
INSERT [dbo].[makale] ([makale_id], [kullanici_id], [resim], [kategori_id], [makale_adi], [makale_tarih], [mekan_adi], [makale_ozet], [makale], [onay]) VALUES (61, 3, N'abant.jpg', 14, N'Her yerde kar var. Abant gezisi', CAST(0x0000A4A30110425A AS DateTime), N'Bolu - Abant', N'Abant Gölü kışın başka güzel. İstanbul’a da kar yağıyor şu anda ve belki de bir çok okul kar tatili nedeniyle eğitime ara verecek. Abant turlarına bakınmak için harika bi vakit. Amacınız daha keyifli bir kar keyfi ise  İstanbul’a 3 saat uzaklıktaki Abant‘ı özellikle kar yağdığında görmenizi tavsiye ediyorum. Abant‘a nasıl gideceğinizi düşünüyorsanız kısaca hemen anlatayım.', N'Abant Gölü kışın başka güzel. İstanbul’a da kar yağıyor şu anda ve belki de bir çok okul kar tatili nedeniyle eğitime ara verecek. Abant turlarına bakınmak için harika bi vakit. Amacınız daha keyifli bir kar keyfi ise  İstanbul’a 3 saat uzaklıktaki Abant‘ı özellikle kar yağdığında görmenizi tavsiye ediyorum. Abant‘a nasıl gideceğinizi düşünüyorsanız kısaca hemen anlatayım.

İstanbul’dan Abant’a özel aracınız ile gelecekseniz  yol yaklaşık 3 saat sürüyor. İstanbul-Ankara arasındaki E-5 kara yolunun Bolu Dağı mevkiinden saparsanız, buradan sonra Abant yolu başlar. İstanbul Abant arası da yaklaşık 280 km, İstanbul’dan TEM Gişeler- Kaynaşlı- Abant sapağı ise 225 kilometre kadar. Abant’a Ankara’dan geleceğim diyorsanız ise TEM otoyolundan Bolu yönüne devam edeceksiniz. Bolu’yu geçer geçmez  otoyoldan Abant gişelerinden çıkacaksınız. E-5 üzerinden Abant kıvrımına devam edip, Abant Gölü Milli Parkı’na ulaşabilirsiniz. Ayrıca Ankara’dan Abant’a ulaşım İstanbul’a göre tam 1 saat daha az sürüyor.  205 km.’lik yolu 2 saatte gelebilirsiniz.

Otobüs ile Abant’a nasıl ulaşılır diye soranları duyar gibiyim:) Otobüsle direkt Abant’a ulaşmanız  mümkün değil. Bolu merkez aktarmalı bir yol izlemek durumundasınız. Bolu merkezden Abant’a minibüs ve dolmuş seferlerini ya da taksi seçeneğini kullanabilirsiniz.

Bunların dışında çeşitli günübirlik ve konaklamalı turlar ile de Abant’a ulaşmak mümkün.', 1)
INSERT [dbo].[makale] ([makale_id], [kullanici_id], [resim], [kategori_id], [makale_adi], [makale_tarih], [mekan_adi], [makale_ozet], [makale], [onay]) VALUES (62, 2, N'malatya.jpg', 44, N'Malatya. Bulunmaz eşin!', CAST(0x0000A4A301150CE7 AS DateTime), N'Malatya', N'Film izlemek dışında Malatya’ya dair o kadar güzel yerler gezdim ki.. Kafamdaki Malatya artık festivalden önceki Malatya değil. Ayrıca hala gezemediğim Levent kanyonu ve Nemrut Dağı da içimde kaldı.', N'Film izlemek dışında Malatya’ya dair o kadar güzel yerler gezdim ki.. Kafamdaki Malatya artık festivalden önceki Malatya değil. Ayrıca hala gezemediğim Levent kanyonu ve Nemrut Dağı da içimde kaldı.Malatya beklediğimin aksine oldukça gelişmiş bir şehir merkezine sahip. Aradığınız her şeye kolaylıkla ulaşabilirsiniz. Şehirde bir tanesi Malatya Park AVM’de olmak üzere 3 tane sinema var. Elbette bir çok otel var Malatya’da. Biz Anemon Otel’de konakladık. Eskişehir’de de çok beğenmiştim bu oteli. Odalardaki ısı ayarı dışında bence tercih edilmesi gereken bir otel olduğunu söyleyebilirim. Malatya’nın meşhuru olan kayısı ve kayısı ürünlerinden almak isterseniz mutlaka Cadde Kayısı’ya uğrayın. Online satış hizmeti de bulunan dükkan da kayısıya dair yok yok. Ayrıca müşterileriyle çok ilgililer. İkramları ile Malatya’ya bir kez de burada doyuyorsunuz.', 1)
INSERT [dbo].[makale] ([makale_id], [kullanici_id], [resim], [kategori_id], [makale_adi], [makale_tarih], [mekan_adi], [makale_ozet], [makale], [onay]) VALUES (63, 5, N'antep.jpg', 27, N'Antep’te günü birlik şehir gezmesi', CAST(0x0000A4A3011CC158 AS DateTime), N'Gaziantep', N'Antep’e günübirlik gittiğimi söylemiştim. Şehirde ne yenir, ne içilir hepsini öğrendim ancak bir gün elbette şehirdeki her müzeyi ve tarihi yapıyı görmeye yetmiyor. Biz sadece öncelikle görmek istediğimiz 1-2 müzeyi ve çarşıyı seçtik. Ancak kapsamlı bir şehir turu için Antep’e tekrar gitmem gerek. Benim listemde neler mi vardı?
', N'Antep’e günübirlik gittiğimi söylemiştim. Şehirde ne yenir, ne içilir hepsini öğrendim ancak bir gün elbette şehirdeki her müzeyi ve tarihi yapıyı görmeye yetmiyor. Biz sadece öncelikle görmek istediğimiz 1-2 müzeyi ve çarşıyı seçtik. Ancak kapsamlı bir şehir turu için Antep’e tekrar gitmem gerek. Benim listemde neler mi vardı?
Antep müzeleri 
9 Eylül 2011’de şehrin merkezindeki Mithatpaşa Mahallesi’nde kapılarını açan Zeugma Müzesi, Dünya’nın en büyük mozaik müzesi olma özelliğine sahip. Eski Tekel Fabrikası arazisinde kurulan ve birbirine bağlı 3 farklı bölümden oluşan müzede iki bin yıllık ve on üç farklı renk armonisinden oluşan mozikleri görebilirsiniz. Bence aralarında en ilgi çekici olan, şehrin simgesi olarak da kabul edilen Dünyaca ünlü “Çingene Kızı” mozaiği. Yer Tanrıçası ve tanrıların anası Gaila ya da Büyük İskender olduğuna dair farklı görüşler mevcut olmakla birlikte saçlarındaki örgüler sebebiyle bu mozaiğe halk Çingene Kızı demeyi uygun bulmuş. Müzedeki diğer değerli ve önemli eserlerden biri de Zeugma’nın koruyucusu olduğu kabul edilen Mars Heykeli. Dionysos’un, bir bölümü ne yazık ki çalınmış olan, Düğün Sahnesi Mozaiği’ni de görmeden ayrılmayın müzeden.', 1)
INSERT [dbo].[makale] ([makale_id], [kullanici_id], [resim], [kategori_id], [makale_adi], [makale_tarih], [mekan_adi], [makale_ozet], [makale], [onay]) VALUES (64, 9, N'edirne.jpg', 22, N'Edirne’de ne yenir?', CAST(0x0000A4A30122D547 AS DateTime), N'Edirne', N'Edirne’de özellikle kavala kurabiyesi, badem ezmesi, peynir helvası yemeden gelmek kendinize yapacağınız en büyük haksızlık olur.', N'Edirne’de özellikle kavala kurabiyesi, badem ezmesi, peynir helvası yemeden gelmek kendinize yapacağınız en büyük haksızlık olur.Arasta Çarşısı ve Edirne’nin hemen hemen yer yerinde sıklıkla rastlayabileceğiniz, mutluluk atıştırmaları bunlar. İnanın çok lezzetliler. Hem kendinizi ödüllendirin hem de paket paket alıp sevdiklerinize hediye edin. Yemek olarak ise tabii ki meşhur Edirne yaprak ciğeri yiyeceğiz. Peki ciğeri nerede yiyelim? Bence ciğerinizi Ünlü Niyazi Usta’da yemeden dönmeyin. Kime sorarsanız yerini tarif ediyor zaten:) Yanında da sağlık kaynağı, Hardaliye istemeyi unutmayın.  Tabi ardından da yemeğe doyamayacağınız peynir tatlısı.', 1)
INSERT [dbo].[makale] ([makale_id], [kullanici_id], [resim], [kategori_id], [makale_adi], [makale_tarih], [mekan_adi], [makale_ozet], [makale], [onay]) VALUES (65, 7, N'buyukada.jpg', 34, N'Büyükada’da kış!', CAST(0x0000A4A30157ABAA AS DateTime), N'İstanbul', N'Büyükada‘ya sadece yazın ve baharda mı gidilir sanıyorsunuz? Yanılıyorsunuz. Büyükada vapur saatlerinde  değişiklik olsa da keyfinde bir değişiklik yok. Ayrıca 14 Şubat Sevgililer Günü için de şahane bir sürpriz seçeneği olduğunu unutmayın.', N'Büyükada‘ya sadece yazın ve baharda mı gidilir sanıyorsunuz? Yanılıyorsunuz. Büyükada vapur saatlerinde  değişiklik olsa da keyfinde bir değişiklik yok. Ayrıca 14 Şubat Sevgililer Günü için de şahane bir sürpriz seçeneği olduğunu unutmayın.Kabataş’tan ve Kadıköy’den hatta Avcılar ve Bostancı’dan rahatlıkla ada vapuruna ulaşabilir ve simit&peynir ikilisi kahvaltınıza kavuşabilirsiniz. Kışın Büyükada‘da konaklamak, sabah tertemiz havaya uyanmak da çok keyifli. Şimdi kısa bir Büyükada turu yapalım hazırsanız…', 1)
INSERT [dbo].[makale] ([makale_id], [kullanici_id], [resim], [kategori_id], [makale_adi], [makale_tarih], [mekan_adi], [makale_ozet], [makale], [onay]) VALUES (66, 7, N'adana.jpg', 1, N'adanada sıcak bir gün', CAST(0x0000A4A4001762D3 AS DateTime), N'Adana', N'adana çok güzel', N'adana çok güzel.Çok seviyorum adanayı özellikle yemekleri mükemmel', 1)
INSERT [dbo].[makale] ([makale_id], [kullanici_id], [resim], [kategori_id], [makale_adi], [makale_tarih], [mekan_adi], [makale_ozet], [makale], [onay]) VALUES (67, 6, N'iskender.jpg', 16, N'En İyi İskender Nerede Yenir?', CAST(0x0000A4A40018D479 AS DateTime), N'Bursa', N'Bursa’da Santral Garaj’ın tam karşısında küçücük bir dükkan bu sıfatı dibine kadar hak ediyor. Burası Uludağ Kebapçısı…

Ezelden beri en iyiyi en mükemmeli arayışı sürüyor insanın. Ya da en azından, yemek söz konusu olduğunda genlerim bana hep bunu emrediyor.', N'Bursa’da Santral Garaj’ın tam karşısında küçücük bir dükkan bu sıfatı dibine kadar hak ediyor. Burası Uludağ Kebapçısı…

Ezelden beri en iyiyi en mükemmeli arayışı sürüyor insanın. Ya da en azından, yemek söz konusu olduğunda genlerim bana hep bunu emrediyor.Bursa’da yaşadığım 2 sene boyunca, en lezzetli İskender nerede yapılıyor diye denemediğim İskenderci kalmamıştı. Öyle ki “abi şurada yeni bir mekan açılmış harika yapıyor İskender’i” gibi söylentiler çıksa, hemen denemeye gidiyordum.

Yok abi yok, daha iyisi yok. Uludağ Kebapçısı ömrümde yediğim en iyi İskender’in yaratıcısı. O kadar iyi ki, ben başka bir yerde İskender yiyemiyorum Bursa’dan ayrıldığımdan beri. He canım çok çektiğinde iyiye yakın denecek yerlerde yiyorum ama içimi hüzün kaplıyor.', 1)
INSERT [dbo].[makale] ([makale_id], [kullanici_id], [resim], [kategori_id], [makale_adi], [makale_tarih], [mekan_adi], [makale_ozet], [makale], [onay]) VALUES (68, 10, N'kaş.jpg', 7, N'Kaş’ın En Güzel 7 Plajı', CAST(0x0000A4A4001B13A4 AS DateTime), N'Antalya - Kaş', N'Sakin, huzur, tertemiz denizi ve havasıyla Kaş Antalya’nın göz bebeklerinden biridir. Sadece yaz aylarında değil kış aylarında da yerli ve yabancı turistler tarafından sıkça ziyaret edilmektedir. Özellikle de ev sahipliğini yaptığı harika dalış noktalarıyla dalgıçların vazgeçilmez rotaları arasında yer alır. Kaş’ı kendi içerisinde özel bir yer yapan noktalardan biri de sınırları içerisinde yer alan mavi bayraklı denizlere sahip Kaş plajları.', N'Sakin, huzur, tertemiz denizi ve havasıyla Kaş Antalya’nın göz bebeklerinden biridir. Sadece yaz aylarında değil kış aylarında da yerli ve yabancı turistler tarafından sıkça ziyaret edilmektedir. Özellikle de ev sahipliğini yaptığı harika dalış noktalarıyla dalgıçların vazgeçilmez rotaları arasında yer alır. Kaş’ı kendi içerisinde özel bir yer yapan noktalardan biri de sınırları içerisinde yer alan mavi bayraklı denizlere sahip Kaş plajları.Tatil planları arasında Kaş’a gitmek isteyenlere öncelikli tavsiye Kaş’ta konaklama yapılacak olan tesise karar vermeleri yönünde olacaktır.  Özellikle yaz aylarında gidiliyorsa Kaş otelleri için ön rezervasyon yaptırmak önemlidir. Zevkinize ve bütçenize göre bir yer ayarlamak sizin becerinize kalmış.', 1)
SET IDENTITY_INSERT [dbo].[makale] OFF
/****** Object:  ForeignKey [FK_yorum_kullanicilar]    Script Date: 05/28/2015 14:11:04 ******/
ALTER TABLE [dbo].[yorum]  WITH CHECK ADD  CONSTRAINT [FK_yorum_kullanicilar] FOREIGN KEY([kullanici_id])
REFERENCES [dbo].[kullanicilar] ([kullanici_id])
GO
ALTER TABLE [dbo].[yorum] CHECK CONSTRAINT [FK_yorum_kullanicilar]
GO
/****** Object:  ForeignKey [FK_makale_kategori]    Script Date: 05/28/2015 14:11:04 ******/
ALTER TABLE [dbo].[makale]  WITH CHECK ADD  CONSTRAINT [FK_makale_kategori] FOREIGN KEY([kategori_id])
REFERENCES [dbo].[kategori] ([kategori_id])
GO
ALTER TABLE [dbo].[makale] CHECK CONSTRAINT [FK_makale_kategori]
GO
/****** Object:  ForeignKey [FK_makale_kullanicilar]    Script Date: 05/28/2015 14:11:04 ******/
ALTER TABLE [dbo].[makale]  WITH CHECK ADD  CONSTRAINT [FK_makale_kullanicilar] FOREIGN KEY([kullanici_id])
REFERENCES [dbo].[kullanicilar] ([kullanici_id])
GO
ALTER TABLE [dbo].[makale] CHECK CONSTRAINT [FK_makale_kullanicilar]
GO
