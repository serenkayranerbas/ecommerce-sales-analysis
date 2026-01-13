# 📊 E-Ticaret Satış Analizi - PostgreSQL & Power BI


## 🎯 Proje Amacı
Bu projenin amacı, bir e-ticaret platformuna ait satış verilerini analiz ederek  
**ürün**, **kategori** ve **zaman** bazlı performansı incelemek,  
**kârlılığı ölçmek** ve iş kararlarını destekleyecek içgörüler üretmektir.

---

## 🛠 Kullanılan Teknolojiler
- **PostgreSQL** – Veri tabanı ve SQL analizleri
- **Power BI** – Veri modelleme, DAX ve görselleştirme
- **SQL** – JOIN, agregasyon ve hesaplamalar

---

## 🗄️ Veri Kaynağı & Modelleme
Veriler **PostgreSQL** üzerinde modellenmiş ve **Power BI**’a bağlanmıştır.

### PostgreSQL Üzerinde Yapılan İşlemler
- Tablolar arası **Primary Key / Foreign Key** ilişkilerinin kurulması
- Satış, ürün ve kategori tablolarının **JOIN** işlemleri ile birleştirilmesi
- **Toplam ciro**, **toplam maliyet** ve **kâr** hesaplamaları
- Power BI analizleri için optimize edilmiş SQL sorguları

---

## 📈 Power BI Üzerinde Yapılan Analizler

### 🔹 KPI (Temel Göstergeler)
Dashboard üzerinde aşağıdaki temel metrikler hesaplanmıştır:
- **Toplam Ciro**
- **Toplam Sipariş Sayısı**
- **Ortalama Sepet Tutarı**
- **Kâr Marjı (%)**

Bu göstergeler, satış performansının genel durumunu hızlıca analiz etmeyi sağlar.

---

### 🔹 Ürün Bazlı Analizler
- **Ürün adına göre Toplam Satılan Adet**
- **Ürün adına göre Toplam Ciro**
- En çok satan ürünler ile en çok ciro getiren ürünlerin karşılaştırılması

📌 Amaç:
- Yüksek ciro sağlayan ürünleri belirlemek
- Satış adedi yüksek fakat kârlılığı düşük ürünleri tespit etmek

---

### 🔹 Kategori Bazlı Analizler
- Kategori bazında:
  - **Toplam Satış Geliri**
  - **Toplam Maliyet**
  - **Toplam Kâr**
- Elektronik, Telefon ve Bilgisayar kategorilerinin performans karşılaştırması

📌 Bu analiz, hangi kategorilerin kârlı veya zarar ettiğini net şekilde göstermektedir.

---

### 🔹 Kârlılık Analizi
- Ürün bazında **Kâr Marjı (%)** hesaplanmıştır
- **Negatif kâr marjına** sahip ürünler tespit edilmiştir

📌 Bu sayede:
- Zarar ettiren ürünler
- Fiyatlandırma veya maliyet optimizasyonu gerektiren ürünler
belirlenmiştir.

---

### 🔹 Zaman Bazlı Analiz
- **Ay ölçütüne göre Toplam Ciro**
- Satışların dönemsel değişimi

📌 Satışların hangi dönemlerde yoğunlaştığı analiz edilmiştir.

---

### 🔹 Detaylı Tablo Analizi
- Ürün, kategori, satış geliri, maliyet ve kâr marjı bilgilerini içeren tablo
- Filtreleme ve sıralama ile detaylı inceleme imkânı

---

## 📊 Öne Çıkan Bulgular
- Genel satışlarda **negatif kâr marjı** tespit edilmiştir
- Bazı ürünler yüksek satış adedine rağmen **zarar etmektedir**
- **Bluetooth Kulaklık** ürünü toplam ciroda öne çıkmaktadır
- Kategori bazında maliyetlerin satış gelirlerine oranla yüksek olduğu görülmüştür

---

## 🎯 Projenin Kazanımları
Bu proje ile:
- **PostgreSQL & Power BI entegrasyonu**
- **Business Intelligence bakış açısı**
- KPI tasarımı ve yorumlanması
- SQL ve DAX ile veri analizi
konularında uçtan uca bir çalışma gerçekleştirilmiştir.

---

## 📷 Dashboard Görünümü
> Power BI raporuna ait ekran görüntüsü proje içerisinde yer almaktadır.

---


