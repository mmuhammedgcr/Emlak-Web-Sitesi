USE [Emlak]
GO
/****** Object:  Table [dbo].[KiraFatura]    Script Date: 30.08.2018 13:31:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KiraFatura](
	[KiraId] [int] NOT NULL,
	[MusteriTc] [varchar](11) NOT NULL,
	[Ucret] [money] NOT NULL,
	[FaturaTarihi] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[KiraId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kiralama]    Script Date: 30.08.2018 13:31:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kiralama](
	[KiraId] [int] IDENTITY(1,1) NOT NULL,
	[KonutId] [nvarchar](15) NOT NULL,
	[MusteriTc] [nvarchar](11) NOT NULL,
	[AlisTarihi] [datetime] NULL,
	[Depozito] [money] NULL,
	[Ucret] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[KiraId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Konut]    Script Date: 30.08.2018 13:31:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Konut](
	[KonutId] [nvarchar](15) NOT NULL,
	[EmlakTipi] [varchar](25) NULL,
	[KonutTuru] [varchar](20) NULL,
	[IlanTarihi] [datetime] NULL,
	[Ucret] [money] NULL,
	[MetreKare] [nvarchar](5) NULL,
	[Kimden] [varchar](20) NULL,
	[OdaSayisi] [nvarchar](5) NULL,
	[Isıtma] [nvarchar](20) NULL,
	[Aidat] [money] NULL,
	[ImarDurumu] [nvarchar](25) NULL,
	[ParselNo] [varchar](10) NULL,
	[TapuDurumu] [varchar](25) NULL,
	[resim1] [nvarchar](250) NULL,
	[resim2] [nvarchar](250) NULL,
	[resim3] [nvarchar](250) NULL,
	[resim4] [nvarchar](250) NULL,
 CONSTRAINT [pk_Konut] PRIMARY KEY CLUSTERED 
(
	[KonutId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KonutAdres]    Script Date: 30.08.2018 13:31:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KonutAdres](
	[KonutId] [nvarchar](15) NOT NULL,
	[SokakNo] [varchar](10) NULL,
	[MahalleNo] [varchar](10) NULL,
	[BinaNo] [varchar](10) NULL,
	[DaireNo] [varchar](15) NULL,
	[Ilce] [nvarchar](30) NULL,
	[Il] [nvarchar](30) NULL,
	[PostaKodu] [varchar](15) NULL,
 CONSTRAINT [pk_KonutAdres] PRIMARY KEY CLUSTERED 
(
	[KonutId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 30.08.2018 13:31:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[KullaniciId] [tinyint] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [varchar](30) NOT NULL,
	[KullaniciSifre] [varchar](30) NOT NULL,
	[YetkiTuru] [varchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteri]    Script Date: 30.08.2018 13:31:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri](
	[MusteriTc] [varchar](11) NOT NULL,
	[KonutId] [nvarchar](15) NOT NULL,
	[MusteriAd] [varchar](25) NULL,
	[MusteriSoyad] [varchar](25) NULL,
	[MusteriTel] [nvarchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[MusteriTc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MusteriAdres]    Script Date: 30.08.2018 13:31:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MusteriAdres](
	[MusteriTc] [varchar](11) NOT NULL,
	[Sehir] [varchar](30) NULL,
	[Ulke] [varchar](30) NULL,
	[Adres] [nvarchar](250) NULL,
	[PostaKodu] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MusteriTc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[resim]    Script Date: 30.08.2018 13:31:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resim](
	[resimID] [int] IDENTITY(1,1) NOT NULL,
	[resim1] [nvarchar](250) NULL,
	[resim2] [nvarchar](250) NULL,
	[resim3] [nvarchar](250) NULL,
	[resim4] [nvarchar](250) NULL,
 CONSTRAINT [PK_resim] PRIMARY KEY CLUSTERED 
(
	[resimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Satis]    Script Date: 30.08.2018 13:31:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satis](
	[SatisId] [int] IDENTITY(1,1) NOT NULL,
	[KonutId] [nvarchar](15) NOT NULL,
	[MusteriTc] [nvarchar](11) NULL,
	[SatisTarihi] [datetime] NULL,
	[Ucret] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[SatisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatisFatura]    Script Date: 30.08.2018 13:31:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatisFatura](
	[SatisId] [int] NOT NULL,
	[MusteriTc] [varchar](11) NOT NULL,
	[Ucret] [money] NOT NULL,
	[FaturaTarihi] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SatisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[KiraFatura]  WITH CHECK ADD  CONSTRAINT [FK_kirafaturaa] FOREIGN KEY([KiraId])
REFERENCES [dbo].[Kiralama] ([KiraId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KiraFatura] CHECK CONSTRAINT [FK_kirafaturaa]
GO
ALTER TABLE [dbo].[Kiralama]  WITH CHECK ADD  CONSTRAINT [FK_Kiralamaa] FOREIGN KEY([KonutId])
REFERENCES [dbo].[Konut] ([KonutId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Kiralama] CHECK CONSTRAINT [FK_Kiralamaa]
GO
ALTER TABLE [dbo].[KonutAdres]  WITH CHECK ADD  CONSTRAINT [FK_KonutAdresS] FOREIGN KEY([KonutId])
REFERENCES [dbo].[Konut] ([KonutId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KonutAdres] CHECK CONSTRAINT [FK_KonutAdresS]
GO
ALTER TABLE [dbo].[Musteri]  WITH CHECK ADD  CONSTRAINT [FK_Musterii] FOREIGN KEY([KonutId])
REFERENCES [dbo].[Konut] ([KonutId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Musteri] CHECK CONSTRAINT [FK_Musterii]
GO
ALTER TABLE [dbo].[MusteriAdres]  WITH CHECK ADD  CONSTRAINT [FK_MusteriAdresS] FOREIGN KEY([MusteriTc])
REFERENCES [dbo].[Musteri] ([MusteriTc])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MusteriAdres] CHECK CONSTRAINT [FK_MusteriAdresS]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satiss] FOREIGN KEY([KonutId])
REFERENCES [dbo].[Konut] ([KonutId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satiss]
GO
ALTER TABLE [dbo].[SatisFatura]  WITH CHECK ADD  CONSTRAINT [FK_Satisfaturaa] FOREIGN KEY([SatisId])
REFERENCES [dbo].[Satis] ([SatisId])
GO
ALTER TABLE [dbo].[SatisFatura] CHECK CONSTRAINT [FK_Satisfaturaa]
GO
ALTER TABLE [dbo].[Konut]  WITH CHECK ADD  CONSTRAINT [chk_EmlakTipi] CHECK  (([EmlakTipi]='Satılık' OR [EmlakTipi]='Kiralık'))
GO
ALTER TABLE [dbo].[Konut] CHECK CONSTRAINT [chk_EmlakTipi]
GO
ALTER TABLE [dbo].[Konut]  WITH CHECK ADD  CONSTRAINT [chk_KonutTuru] CHECK  (([KonutTuru]='Arsa' OR [KonutTuru]='İşyeri' OR [KonutTuru]='Ev'))
GO
ALTER TABLE [dbo].[Konut] CHECK CONSTRAINT [chk_KonutTuru]
GO
/****** Object:  StoredProcedure [dbo].[KiraEkle]    Script Date: 30.08.2018 13:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[KiraEkle]
(
		@KonutId nvarchar(15),
		@MusteriTc nvarchar(11),
		@AlisTarihi datetime ,
		@Depozito money,
		@Ucret money
)
AS
BEGIN
	INSERT into Kiralama VALUES(@KonutId,@MusteriTc,@AlisTarihi,@Depozito,@Ucret);
END	

GO
/****** Object:  StoredProcedure [dbo].[KonutGuncelle]    Script Date: 30.08.2018 13:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[KonutGuncelle](
		@KonutId nvarchar(15),
		@EmlakTipi varchar(25),
		@KonutTuru varchar(20),
		@IlanTarihi datetime,
		@Ucret money ,
		@MetreKare nvarchar(5),
		@Kimden varchar(20) ,
		@OdaSayisi nvarchar(5) ,
		@Isıtma nvarchar(20),
		@Aidat money ,
		@ImarDurumu nvarchar(25),
		@ParselNo varchar(10),
		@TapuDurumu varchar(25),
		@SokakNo varchar(10),
		@MahalleNo varchar(10),	
		@BinaNo varchar(10) ,
		@DaireNo varchar(15),	
		@Ilce nvarchar(30),
		@Il nvarchar(30),
		@PostaKodu varchar(15)
)
AS
BEGIN
	UPDATE Konut SET  EmlakTipi=@EmlakTipi, KonutTuru=@KonutTuru, IlanTarihi=@IlanTarihi,Ucret=@Ucret,MetreKare=@MetreKare,Kimden=@Kimden,
	OdaSayisi=@OdaSayisi,Isıtma=@Isıtma,Aidat=@Aidat,ImarDurumu=@ImarDurumu,ParselNo=@ParselNo,TapuDurumu=@TapuDurumu WHERE KonutId=@KonutId

	UPDATE KonutAdres SET  SokakNo=@SokakNo,MahalleNo=@MahalleNo,BinaNo=@BinaNo,DaireNo=@DaireNo,Ilce=@Ilce,Il=@Il,PostaKodu=@PostaKodu WHERE KonutId=@KonutId
END
GO
/****** Object:  StoredProcedure [dbo].[MusteriEkle]    Script Date: 30.08.2018 13:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[MusteriEkle](
@musteritc nvarchar(11),
@konutid nvarchar(15),
@ad nvarchar(25),
@soyad nvarchar(25),
@telefon nvarchar(11),
@sehir varchar(30),
@ulke varchar(30),
@adres nvarchar(250),
@postakodu  nvarchar(20)
)
AS
BEGIN
	INSERT into Musteri values(@musteritc,@konutid,@ad,@soyad,@telefon);
	INSERT into MusteriAdres values(@musteritc,@sehir,@ulke,@adres,@postakodu);
END

GO
/****** Object:  StoredProcedure [dbo].[MusteriGuncelle]    Script Date: 30.08.2018 13:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MusteriGuncelle]
(
	@musteritc nvarchar(11),
	@konutid nvarchar(15),
	@ad nvarchar(25),
	@soyad nvarchar(25),
	@telefon nvarchar(11),
	@sehir varchar(30),
	@ulke varchar(30),
	@adres nvarchar(250),
	@postakodu  nvarchar(20)
)
AS
BEGIN
	UPDATE Musteri SET  KonutId=@konutid,MusteriAd=@ad, MusteriSoyad=@soyad, MusteriTel=@telefon
	where MusteriTc=@musteritc
	
	UPDATE MusteriAdres SET  Sehir=@sehir, Ulke=@ulke, Adres=@adres, PostaKodu=@postakodu
	where MusteriTc=@musteritc
	
END
GO
/****** Object:  StoredProcedure [dbo].[MusteriSil]    Script Date: 30.08.2018 13:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[MusteriSil]
(
	@tc int
)
AS
BEGIN
	
	DELETE FROM MusteriAdres Where MusteriTC=@tc;
END

GO
/****** Object:  StoredProcedure [dbo].[SatisEkle]    Script Date: 30.08.2018 13:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SatisEkle](
	@KonutId nvarchar(15),
	@MusteriTc nvarchar(11),
	@SatisTarihi datetime,
	@Ucret money
	)
	AS
BEGIN
	INSERT into Satis VALUES(@KonutId,@MusteriTc,@SatisTarihi,@Ucret);
END
GO
