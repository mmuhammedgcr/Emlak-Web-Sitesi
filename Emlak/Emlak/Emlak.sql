Go
-- "[Emlak]" adýnda veri tabaný yoksa oluþturur.
IF DB_ID('Emlak') IS NULL 
CREATE DATABASE  Emlak


GO 
USE Emlak

-- [Emlak] veritabanýnda [Konut] adlý tablo yoksa sütunlarýyla beraber oluþturur.
IF (NOT EXISTS (SELECT * FROM [sys].[tables] WHERE [name] = 'Konut'))
Begin
	CREATE TABLE [dbo].[Konut](
		KonutId nvarchar(15) NOT NULL,
		EmlakTipi varchar(25) NULL,
		KonutTuru varchar(20)NULL,
		IlanTarihi datetime NULL,
		Ucret money NULL,
		MetreKare nvarchar(5) NULL,
		Kimden varchar(20) NULL,
		OdaSayisi nvarchar(5) NULL,
		Isýtma nvarchar(20) NULL,
		Aidat money NULL,
		ImarDurumu nvarchar(25) NULL,
		ParselNo varchar(10) NULL,
		TapuDurumu varchar(25) NULL,
		Constraint pk_Konut PRIMARY KEY CLUSTERED (KonutId),
		Constraint chk_EmlakTipi check(EmlakTipi IN('Kiralýk','Satýlýk')),
		Constraint chk_KonutTuru check(KonutTuru IN('Ev','Ýþyeri','Arsa')),
		)
END


GO

-- [Emlak] veritabanýnda [KonutAdres] adlý tablo yoksa sütunlarýyla beraber oluþturur.
IF (NOT EXISTS (SELECT * FROM [sys].[tables] WHERE [name] = 'KonutAdres'))
BEGIN
	CREATE TABLE [dbo].[KonutAdres](
	KonutId nvarchar(15) NOT NULL,
	SokakNo varchar(10) NULL,	
	MahalleNo varchar(10) Null,	
	BinaNo varchar(10) NULL,	
	DaireNo varchar(15) NULL,	
	Ilce nvarchar(30) NULL,
	Il nvarchar(30) NULL,
	PostaKodu varchar(15) NULL,
	Constraint pk_KonutAdres PRIMARY KEY CLUSTERED (KonutId),

	
			)
END
GO
-- [Emlak] veritabanýnda [Müþteri] adlý tablo yoksa sütunlarýyla beraber oluþturur.
IF (NOT EXISTS (SELECT * FROM [sys].[tables] WHERE [name] = 'Musteri'))
BEGIN
	CREATE TABLE [dbo].[Musteri](
		MusteriTc varchar(11) PRIMARY KEY NOT NULL,
		KonutId nvarchar(15) NOT NULL,
		MusteriAd varchar(25) null,
		MusteriSoyad varchar(25) NULL,
		MusteriTel nvarchar(11) NULL,
		CONSTRAINT fk_Musteri FOREIGN KEY(KonutId) 
			REFERENCES [dbo].[Konut] (KonutId)
	)
END

GO

-- [Emlak] veritabanýnda [MüþteriAdres] adlý tablo yoksa sütunlarýyla beraber oluþturur.
IF (NOT EXISTS (SELECT * FROM [sys].[tables] WHERE [name] = 'MusteriAdres'))
BEGIN
	CREATE TABLE [dbo].[MusteriAdres](
		MusteriTc varchar(11) PRIMARY KEY NOT NULL,
		Sehir varchar(30) null,
		Ulke varchar(30) Null,
		Adres nvarchar(250) Null,
		PostaKodu varchar(20) NULL,
		)
END

Go

-- [Emlak] veritabanýnda Kiralama] adlý tablo yoksa sütunlarýyla beraber oluþturur.
IF (NOT EXISTS (SELECT * FROM [sys].[tables] WHERE [name] = 'Kiralama'))
BEGIN
	CREATE TABLE[dbo].[Kiralama](
		KiraId int identity(1,1) PRIMARY KEY NOT NULL,
		KonutId nvarchar(15) NOT NULL,
		MusteriTc nvarchar(11) NOT NULL,
		AlisTarihi datetime NULL,
		Depozito money NULL,		
			)
END
GO

-- [Emlak] veritabanýnda satis adlý tablo yoksa sütunlarýyla beraber oluþturur.
IF (NOT EXISTS (SELECT * FROM [sys].[tables] WHERE [name] = 'Satis'))
BEGIN 
	CREATE TABLE [dbo].[Satis](
		SatisId int identity(1,1) PRIMARY KEY NOT NULL,
		KonutId nvarchar(15) NOT NULL,
		MusteriTc nvarchar(11) NULL,
		SatisTarihi datetime NULL,
		
		)
END
GO

-- [Emlak] veritabanýnda KiraFatura adlý tablo yoksa sütunlarýyla beraber oluþturur.
IF (NOT EXISTS (SELECT * FROM [sys].[tables] WHERE [name] = 'KiraFatura'))
BEGIN
	CREATE TABLE [dbo].[KiraFatura](
	KiraId int PRIMARY KEY NOT NULL,
	MusteriTc varchar(11) NOT NULL,
	Ucret money Not null,
	FaturaTarihi datetime NULL,
	
		)
End
Go
-- [Emlak] veritabanýnda SatýsFatura adlý tablo yoksa sütunlarýyla beraber oluþturur.
IF (NOT EXISTS (SELECT * FROM [sys].[tables] WHERE [name] = 'SatisFatura'))
BEGIN
	CREATE TABLE [dbo].[SatisFatura](
	SatisId int PRIMARY KEY NOT NULL,
	MusteriTc varchar(11) NOT NULL,
	Ucret money NOT NULL,
	FaturaTarihi datetime Null
	)
END
GO

-- [Emlak] veritabanýnda Kullanicilar adlý tablo yoksa sütunlarýyla beraber oluþturur.
IF (NOT EXISTS (SELECT * FROM [sys].[tables] WHERE [name] = 'Kullanicilar'))
BEGIN
	CREATE TABLE [dbo].[Kullanicilar](
		KullaniciId tinyint identity(1,1) Not NULL,
		KullaniciAdi varchar(30) Not null,
		KullaniciSifre varchar(30) NOT NULL,
		YetkiTuru varchar(30) Not null,
		)
END

--FOREIGN KEYLER
GO
ALTER TABLE [dbo].[Musteri] 
	ADD CONSTRAINT [FK_Musterii] 
	FOREIGN KEY(KonutId)
	REFERENCES [dbo].[Konut] ([KonutId])ON DELETE CASCADE ON UPDATE CASCADE		 
GO
ALTER TABLE [dbo].[KonutAdres] 
	ADD CONSTRAINT [FK_KonutAdresS] 
	FOREIGN KEY([KonutId])
	REFERENCES [dbo].[Konut] ([KonutId]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MusteriAdres] 
	ADD CONSTRAINT [FK_MusteriAdres] 
	FOREIGN KEY([MusteriTc])
	REFERENCES [dbo].[Musteri] ([MusteriTc]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Satis] 
	ADD CONSTRAINT [FK_Satiss] 
	FOREIGN KEY([KonutId])
	REFERENCES [dbo].[Konut] ([KonutId])ON DELETE CASCADE ON UPDATE CASCADE
	GO
ALTER TABLE [dbo].[Kiralama] 
	ADD CONSTRAINT [FK_Kiralamaa] 
	FOREIGN KEY([KonutId])
	REFERENCES [dbo].[Konut] ([KonutId])ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[KiraFatura] 
	ADD CONSTRAINT [FK_kirafaturaa] 
	FOREIGN KEY(KiraId)
	REFERENCES [dbo].[Kiralama] ([KiraId])ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SatisFatura] 
	ADD CONSTRAINT [FK_Satisfaturaa] 
	FOREIGN KEY(SatisId)
	REFERENCES [dbo].[Satis] ([SatisId])ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[KiraFatura] 
	ADD CONSTRAINT [FK_kirafaturaaa] 
	FOREIGN KEY(MusteriTc)
	REFERENCES [dbo].[Musteri] ([MusteriTc])ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SatisFatura] 
	ADD CONSTRAINT [FK_Satisfatura22] 
	FOREIGN KEY(MusteriTC)
	REFERENCES [dbo].[Musteri] ([MusteriTc])ON DELETE CASCADE ON UPDATE CASCADE 
GO
ALTER TABLE [dbo].[Kiralama]
	ADD Ucret money NULL
GO
ALTER TABLE [dbo].[Satis]
	ADD Ucret money NULL

use Emlak
go
-- store procedurler
CREATE PROC KonutEkle(
		@KonutId nvarchar(15),
		@EmlakTipi varchar(25),
		@KonutTuru varchar(20),
		@IlanTarihi datetime,
		@Ucret money ,
		@MetreKare nvarchar(5),
		@Kimden varchar(20) ,
		@OdaSayisi nvarchar(5) ,
		@Isýtma nvarchar(20),
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
	INSERT into Konut VALUES(@KonutId,@EmlakTipi,@KonutTuru,@IlanTarihi,@Ucret,@MetreKare,@Kimden,@OdaSayisi,@Isýtma,@Aidat,@ImarDurumu,@ParselNo,@TapuDurumu);
	INSERT into KonutAdres VALUES(@KonutId,@SokakNo,@MahalleNo,@BinaNo,@DaireNo,@Ilce,@Il,@PostaKodu)
END

GO
CREATE PROC KonutGuncelle(
		@KonutId nvarchar(15),
		@EmlakTipi varchar(25),
		@KonutTuru varchar(20),
		@IlanTarihi datetime,
		@Ucret money ,
		@MetreKare nvarchar(5),
		@Kimden varchar(20) ,
		@OdaSayisi nvarchar(5) ,
		@Isýtma nvarchar(20),
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
	OdaSayisi=@OdaSayisi,Isýtma=@Isýtma,Aidat=@Aidat,ImarDurumu=@ImarDurumu,ParselNo=@ParselNo,TapuDurumu=@TapuDurumu WHERE KonutId=@KonutId

	UPDATE KonutAdres SET  SokakNo=@SokakNo,MahalleNo=@MahalleNo,BinaNo=@BinaNo,DaireNo=@DaireNo,Ilce=@Ilce,Il=@Il,PostaKodu=@PostaKodu WHERE KonutId=@KonutId
END




CREATE PROC MusteriEkle(
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
use Emlak
CREATE PROC MusteriGuncelle
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


CREATE PROC MusteriSil
(
	@tc int
)
AS
BEGIN
	DELETE FROM MusteriAdres Where MusteriTC=@tc;
	DELETE FROM Musteri Where MusteriTC=@tc;
END

CREATE PROC KiraEkle
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



CREATE PROC SatisEkle(
	@KonutId nvarchar(15),
	@MusteriTc nvarchar(11),
	@SatisTarihi datetime,
	@Ucret money
	)
	AS
BEGIN
	INSERT into Satis VALUES(@KonutId,@MusteriTc,@SatisTarihi,@Ucret);
END



--Triggerlar--

CREATE TRIGGER trg_KiraFatura
ON Kiralama
FOR INSERT
AS
	DECLARE @KiraId int =(select KiraId from inserted)
	DECLARE @MusteriTc int =(select MusteriTc from inserted)
	DECLARE @KiraUcret money=(select Ucret from inserted)
	DECLARE @Depozito money=(select Depozito from inserted)
	Declare @ToplamUcret money= @KiraUcret+@Depozito
	DECLARE @Tarih datetime=(select AlisTarihi from Kiralama)
	INSERT [dbo].[KiraFatura] VALUES(@KiraId,@MusteriTc,@ToplamUcret,@Tarih)


GO
CREATE TRIGGER trg_SatisFatura
ON Satis
FOR INSERT
AS
	DECLARE @SatisId int =(select SatisId from inserted)
	DECLARE @MusteriTc int =(select MusteriTc from inserted)
	DECLARE @SatisUcret money=(select Ucret from inserted)
	INSERT [dbo].[SatisFatura] VALUES(@SatisId,@MusteriTc,@SatisUcret,GETDATE())


	drop trigger trg_KiraFatura