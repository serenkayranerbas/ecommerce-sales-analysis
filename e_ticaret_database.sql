-- =========================
-- TABLO: kategoriler
-- =========================
CREATE TABLE kategoriler (
    kategori_id SERIAL PRIMARY KEY,
    kategori_adi VARCHAR(100) NOT NULL
);

-- =========================
-- TABLO: musteriler
-- =========================
CREATE TABLE musteriler (
    musteri_id SERIAL PRIMARY KEY,
    ad VARCHAR(50),
    soyad VARCHAR(50),
    email VARCHAR(100),
    sehir VARCHAR(50),
    ulke VARCHAR(50),
    kayit_tarihi DATE
);

-- =========================
-- TABLO: urunler
-- =========================
CREATE TABLE urunler (
    urun_id SERIAL PRIMARY KEY,
    urun_adi VARCHAR(100),
    kategori_id INT,
    alis_fiyati NUMERIC(10,2),
    satis_fiyati NUMERIC(10,2),
    stok INT,
    FOREIGN KEY (kategori_id)
        REFERENCES kategoriler(kategori_id)
);

-- =========================
-- TABLO: siparisler
-- =========================
CREATE TABLE siparisler (
    siparis_id SERIAL PRIMARY KEY,
    musteri_id INT,
    siparis_tarihi DATE,
    kargo_firmasi VARCHAR(50),
    durum VARCHAR(30),
    FOREIGN KEY (musteri_id)
        REFERENCES musteriler(musteri_id)
);

-- =========================
-- TABLO: siparis_detay
-- =========================
CREATE TABLE siparis_detay (
    detay_id SERIAL PRIMARY KEY,
    siparis_id INT,
    urun_id INT,
    miktar INT,
    birim_fiyat NUMERIC(10,2),
    indirim NUMERIC(5,2),
    FOREIGN KEY (siparis_id)
        REFERENCES siparisler(siparis_id),
    FOREIGN KEY (urun_id)
        REFERENCES urunler(urun_id)
);


INSERT INTO siparis_detay (siparis_id, urun_id, miktar, birim_fiyat, indirim) VALUES
(1, 1, 1, 7500.00, 0),
(1, 2, 2, 150.00, 10.00),
(2, 3, 1, 300.00, 0),
(2, 4, 1, 1200.00, 50.00),
(3, 5, 3, 120.00, 0),
(4, 1, 2, 7500.00, 500.00),
(5, 2, 5, 150.00, 0),
(5, 3, 2, 300.00, 20.00),
(6, 4, 1, 1200.00, 0),
(7, 5, 4, 120.00, 0),
(8, 1, 1, 7500.00, 0),
(9, 2, 3, 150.00, 5.00),
(10, 3, 2, 300.00, 0),
(11, 4, 1, 1200.00, 100.00),
(12, 5, 1, 120.00, 0);





INSERT INTO kategoriler (kategori_adi) VALUES
('Elektronik'),
('Bilgisayar'),
('Telefon'),
('Ev Aletleri'),
('Beyaz Esya'),
('Kucuk Ev Aletleri'),
('Televizyon'),
('Ses Sistemleri'),
('Yapi Market'),
('Oto Aksesuar'),
('Yedek Parca'),
('Pet Shop'),
('Hayvan Mamasi'),
('Temizlik'),
('Gida'),
('Icecek'),
('Organik');



INSERT INTO musteriler (ad, soyad, email, sehir, ulke, kayit_tarihi) VALUES
('Ali','Yilmaz','ali.yilmaz@mail.com','Istanbul','Turkiye','2024-01-05'),
('Ayse','Demirci','ayse.demir@mail.com','Ankara','Turkiye','2024-01-06'),
('Mehmet','Kaya','mehmet.kaya@mail.com','Izmir','Turkiye','2024-01-07'),
('Elif','Celik','elif.celik@mail.com','Bursa','Turkiye','2024-01-08'),
('Ahmet','Sahin','ahmet.sahin@mail.com','Antalya','Turkiye','2024-01-09'),
('Zeynep','Yildiz','zeynep.yildiz@mail.com','Adana','Turkiye','2024-01-10'),
('Murat','Aydin','murat.aydin@mail.com','Konya','Turkiye','2024-01-11'),
('Fatma','Arslan','fatma.arslan@mail.com','Kayseri','Turkiye','2024-01-12'),
('Emre','Ozturk','emre.ozturk@mail.com','Samsun','Turkiye','2024-01-13'),
('Selin','Koc','selin.koc@mail.com','Eskisehir','Turkiye','2024-01-14'),
('Can','Polat','can.polat@mail.com','Istanbul','Turkiye','2024-01-15'),
('Derya','Gunes','derya.gunes@mail.com','Izmir','Turkiye','2024-01-16'),
('Burak','Aksoy','burak.aksoy@mail.com','Ankara','Turkiye','2024-01-17'),
('Ece','Kaplan','ece.kaplan@mail.com','Bursa','Turkiye','2024-01-18'),
('Onur','Tas','onur.tas@mail.com','Antalya','Turkiye','2024-01-19'),
('Seda','Yavuz','seda.yavuz@mail.com','Mersin','Turkiye','2024-01-20'),
('Hakan','Kurt','hakan.kurt@mail.com','Gaziantep','Turkiye','2024-01-21'),
('Pinar','Ozkan','pinar.ozkan@mail.com','Trabzon','Turkiye','2024-01-22'),
('Serkan','Eren','serkan.eren@mail.com','Sakarya','Turkiye','2024-01-23'),
('Buse','Cetin','buse.cetin@mail.com','Kocaeli','Turkiye','2024-01-24'),
('Tolga','Bozkurt','tolga.bozkurt@mail.com','Istanbul','Turkiye','2024-01-25'),
('Hande','Acar','hande.acar@mail.com','Izmir','Turkiye','2024-01-26'),
('Okan','Dogan','okan.dogan@mail.com','Ankara','Turkiye','2024-01-27'),
('Melis','Sari','melis.sari@mail.com','Bursa','Turkiye','2024-01-28'),
('Ugur','Caliskan','ugur.caliskan@mail.com','Antalya','Turkiye','2024-01-29'),
('Cansu','Karaca','cansu.karaca@mail.com','Denizli','Turkiye','2024-01-30'),
('Kaan','Yaman','kaan.yaman@mail.com','Mugla','Turkiye','2024-01-31'),
('Nisa','Toprak','nisa.toprak@mail.com','Aydin','Turkiye','2024-02-01'),
('Volkan','Sezer','volkan.sezer@mail.com','Tekirdag','Turkiye','2024-02-02'),
('Sibel','Guler','sibel.guler@mail.com','Balikesir','Turkiye','2024-02-03'),
('Furkan','Demirtas','furkan.demirtas@mail.com','Manisa','Turkiye','2024-02-04'),
('Yasemin','Simsek','yasemin.simsek@mail.com','Corum','Turkiye','2024-02-05'),
('Kadir','Ulusoy','kadir.ulusoy@mail.com','Sivas','Turkiye','2024-02-06'),
('Deniz','Aktepe','deniz.aktepe@mail.com','Edirne','Turkiye','2024-02-07'),
('Merve','Altun','merve.altun@mail.com','Isparta','Turkiye','2024-02-08'),
('Batuhan','Ince','batuhan.ince@mail.com','Usak','Turkiye','2024-02-09'),
('Gamze','Kilic','gamze.kilic@mail.com','Tokat','Turkiye','2024-02-10'),
('Kerem','Ersoy','kerem.ersoy@mail.com','Amasya','Turkiye','2024-02-11'),
('Asli','Mutlu','asli.mutlu@mail.com','Sinop','Turkiye','2024-02-12'),
('Berk','Avci','berk.avci@mail.com','Rize','Turkiye','2024-02-13');

INSERT INTO urunler (urun_adi, kategori_id, alis_fiyati, satis_fiyati, stok) VALUES
('Bluetooth Kulaklik',1,500,750,120),
('Powerbank 20000mAh',1,600,900,80),
('Laptop 16GB RAM',2,15000,18500,25),
('Masaustu Bilgisayar',2,18000,22000,15),
('Akilli Telefon 128GB',3,12000,14500,40),
('Akilli Telefon 256GB',3,15000,17500,30),
('Supurge Robot',4,7000,8900,18),
('Mikrodalga Firin',4,3500,4500,22),
('Buzdolabi NoFrost',5,16000,19500,10),
('Camasir Makinesi 9kg',5,14000,17000,12),
('Kahve Makinesi',6,2800,3600,35),
('Tost Makinesi',6,1800,2400,40),
('55 Inc Smart TV',7,17000,21000,14),
('65 Inc OLED TV',7,26000,31500,8),
('Soundbar',8,4500,5800,28),
('Bluetooth Hoparlor',8,2200,2900,50),
('Matkap Seti',9,3200,4100,20),
('Vida Seti',9,400,650,150),
('Oto Koltuk Kilifi',10,900,1400,60),
('Oto Telefon Tutucu',10,250,450,100),
('Fren Balatasi',11,1200,1900,35),
('Yag Filtresi',11,300,550,70),
('Kedi Oyuncagi',12,150,300,90),
('Kopek Tasmasi',12,350,600,55),
('Kedi Mamasi 10kg',13,900,1350,40),
('Kopek Mamasi 15kg',13,1200,1750,30),
('Yuzey Temizleyici',14,120,220,110),
('Camasir Suyu',14,80,150,140),
('Makarna 5kg',15,120,200,200),
('Pirinç 5kg',15,250,380,160),
('Meyve Suyu 1L',16,25,45,300),
('Maden Suyu 6li',16,35,65,280),
('Organik Bal',17,450,700,25),
('Organik Zeytinyagi',17,600,950,20),
('Tablet 10 Inc',1,6500,8200,30),
('Oyuncu Laptopu',2,22000,26500,12),
('Akilli Saat',3,2200,3100,45),
('Elektrikli Supurge',4,4200,5600,26),
('Derin Dondurucu',5,13000,16500,9),
('Blender Seti',6,2100,2900,38),
('43 Inc LED TV',7,11000,13800,18),
('Ev Sinema Sistemi',8,7800,9600,11),
('Mat Boya 10L',9,900,1350,44),
('Oto Bagaj Organizer',10,400,650,75),
('Hava Filtresi',11,350,600,65),
('Kedi Kumu 10kg',12,280,450,90);

INSERT INTO siparisler (musteri_id, siparis_tarihi, kargo_firmasi, durum) VALUES
(1, '2026-01-01', 'Yurtiçi Kargo', 'Teslim Edildi'),
(2, '2026-01-02', 'Aras Kargo', 'Yolda'),
(3, '2026-01-03', 'MNG Kargo', 'Hazırlanıyor'),
(4, '2026-01-04', 'PTT Kargo', 'Teslim Edildi'),
(1, '2026-01-05', 'Yurtiçi Kargo', 'İptal Edildi'),
(2, '2026-01-06', 'Aras Kargo', 'Teslim Edildi'),
(3, '2026-01-07', 'MNG Kargo', 'Yolda'),
(4, '2026-01-08', 'PTT Kargo', 'Hazırlanıyor'),
(1, '2026-01-09', 'Yurtiçi Kargo', 'Teslim Edildi'),
(2, '2026-01-10', 'Aras Kargo', 'İptal Edildi'),
(3, '2026-01-11', 'MNG Kargo', 'Teslim Edildi'),
(4, '2026-01-12', 'PTT Kargo', 'Yolda'),
(1, '2026-01-13', 'Yurtiçi Kargo', 'Hazırlanıyor'),
(2, '2026-01-14', 'Aras Kargo', 'Teslim Edildi'),
(3, '2026-01-15', 'MNG Kargo', 'Yolda');


INSERT INTO siparis_detay (siparis_id, urun_id, miktar, birim_fiyat, indirim) VALUES
(1, 1, 1, 7500.00, 0),
(1, 2, 2, 150.00, 10.00),
(2, 3, 1, 300.00, 0),
(2, 4, 1, 1200.00, 50.00),
(3, 5, 3, 120.00, 0),
(4, 1, 2, 7500.00, 500.00),
(5, 2, 5, 150.00, 0),
(5, 3, 2, 300.00, 20.00),
(6, 4, 1, 1200.00, 0),
(7, 5, 4, 120.00, 0),
(8, 1, 1, 7500.00, 0),
(9, 2, 3, 150.00, 5.00),
(10, 3, 2, 300.00, 0),
(11, 4, 1, 1200.00, 100.00),
(12, 5, 1, 120.00, 0);


INSERT INTO siparisler (musteri_id, siparis_tarihi, kargo_firmasi, durum) VALUES
(1, '2026-01-10', 'Yurtiçi Kargo', 'Teslim Edildi'),
(2, '2026-02-12', 'Aras Kargo', 'Teslim Edildi'),
(3, '2026-03-08', 'MNG Kargo', 'Yolda'),
(4, '2026-04-15', 'PTT Kargo', 'Hazırlanıyor'),
(5, '2026-05-20', 'Yurtiçi Kargo', 'Teslim Edildi'),
(6, '2026-06-05', 'Aras Kargo', 'Yolda'),
(7, '2026-07-18', 'MNG Kargo', 'Teslim Edildi'),
(8, '2026-08-22', 'PTT Kargo', 'Hazırlanıyor'),
(9, '2026-09-10', 'Yurtiçi Kargo', 'Teslim Edildi'),
(10,'2026-10-03', 'Aras Kargo', 'Yolda'),
(1, '2026-11-14', 'MNG Kargo', 'Teslim Edildi'),
(2, '2026-12-27', 'PTT Kargo', 'Hazırlanıyor');


INSERT INTO siparisler (musteri_id, siparis_tarihi, durum, kargo_firmasi)
VALUES
(1, '2025-02-05', 'Teslim Edildi', 'Yurtiçi'),
(2, '2025-02-18', 'Teslim Edildi', 'Aras'),
(3, '2025-03-03', 'Teslim Edildi', 'MNG'),
(1, '2025-03-22', 'Teslim Edildi', 'Yurtiçi');


select * from siparisler
