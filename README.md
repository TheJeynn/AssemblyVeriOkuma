AssemblyVeriOkuma

Dizi oluşturma ve veri okuma işlemleri - Assembly dili ile 8051 uygulamaları

📌 Proje Hakkında

Bu proje, 8051 mikrodenetleyici ailesi için Assembly dilinde yazılmış temel dizi (array) oluşturma,
veri okuma/yazma ve bellek işlemleri örneklerini içerir. Keil uVision IDE ile geliştirilmiştir. Amaç,
Assembly seviyesinde dizi yapılarının nasıl kullanıldığını göstermek ve çeşitli laboratuvar çalışmalarını belgelemektir.

🚀 Başlarken
Gereksinimler
Keil uVision (v5 veya üzeri)

8051 tabanlı bir mikrodenetleyici (simülatör veya gerçek donanım)

Temel Assembly bilgisi

Derleme ve Çalıştırma
Projeyi klonlayın:

git clone https://github.com/TheJeynn/AssemblyVeriOkuma.git
Lab1.uvproj dosyasını Keil uVision ile açın.

İstediğiniz .a51 dosyasını (örneğin Calisma.a51) projeye ekleyin veya derleyin.

Build (F7) -> Debug (Ctrl+F5) ile simülatörde çalıştırın.


📖 İçerik Açıklamaları

Dosya	Açıklama
Calisma.a51	Dizi tanımlama, elemanlara erişim ve döngü ile işleme örneği
FirstLab1.a51	Basal assembly komutları, bellek alanına veri yazma/okuma
OrnekSoru.a51	Örnek bir problem çözümü (genellikle dizi toplama/sıralama)
Her bir dosya, 8051'in internal RAM (00h-7Fh) veya code memory'sinde dizi benzeri yapılar oluşturmayı gösterir.

👥 Katkıda Bulunanlar
Burak (TheJeynn) - tüm assembly kodları ve proje yapısı

