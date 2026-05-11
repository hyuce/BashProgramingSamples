# Bash Programlama Örnekleri

Bu depo, kabuk (shell/bash) programlamayı temelden ileri seviyeye kadar öğrenmek isteyenler için hazırlanmış örnek kodları içerir. Dosyalar mantıksal bir öğrenme sırasına göre numaralandırılmıştır.

## İçerik Listesi

### 1. Temel İşlemler (Giriş, Çıkış ve Aritmetik)
Bu bölümde değişken tanımlama, kullanıcıdan veri alma ve temel matematiksel işlemler ele alınmaktadır.
- `01_input_output.sh`: `echo` ve `read` kullanımı.
- `02_expr_arithmetic.sh`: `expr` komutu ile tam sayı işlemleri.
- `03_bc_arithmetic.sh`: `bc` komutu ile ondalıklı (hassas) işlemler.
- `04_arguments.sh`: `$1`, `$2` gibi komut satırı argümanlarının kullanımı.
- `04a_command_substitution.sh`: Komut çıktılarını değişkenlerde kullanma (`$( )`).
- `05_cut_command.sh`: Metin dosyalarından (`csv` vb.) belirli alanları ayıklama.
- `06_string_manipulation.sh`: `tr` komutu ile karakter dönüşümü.
- `06a_bash_string_ops.sh`: Bash dahili metin işleme (substring, replace vb.).
- `06b_here_doc.sh`: Çok satırlı metin blokları oluşturma (`<<EOF`).

### 2. Karar Yapıları (Conditionals)
Programın akışını kontrol etmek için kullanılan `if` ve `case` yapıları.
- `07_if_syntax.sh`: `if-then-else` yapısı şablonu.
- `08_file_check.sh`: Dosya veya dizin varlık kontrolü (`-f`, `-d`).
- `09_if_conditions.sh`: Sayısal ve mantıksal karşılaştırmalar.
- `09a_if_args.sh`: Argümanlar üzerinden koşullu işlemler.
- `10_case_syntax.sh`: `case` yapısı şablonu.
- `11_case_example.sh`: Seçenekli menü uygulaması.
- `11a_redirection_tips.sh`: Standart çıktı ve hata yönlendirmeleri (`stdout`, `stderr`).

### 3. Döngüler (Loops)
Tekrar eden işlemler için `while` ve `for` döngüleri.
- `12_while_syntax.sh`: `while` döngüsü şablonu.
- `13_while_example.sh`: Koşullu döngü örneği (Geri sayım).
- `14_while_counter.sh`: Artan sayaç ile döngü kontrolü.
- `15_for_syntax.sh`: `for` döngüsü şablonu.
- `16_for_list.sh`: Bir kelime listesi üzerinde dönme.
- `17_for_range.sh`: Belirli bir sayı aralığında dönme (`{1..10}`).
- `18_for_files.sh`: Dizindeki tüm dosyaları işleme.
- `19_for_files_index.sh`: Dosyaları numaralandırarak listeleme.

### 4. Diziler (Arrays)
Birden fazla veriyi tek bir değişkende tutma.
- `20_array_basic.sh`: Dizi tanımlama ve elemanlara erişim.
- `21_array_loop.sh`: Diziler ve döngülerin birlikte kullanımı.
- `22_array_access.sh`: Belirli indeksli elemanlarla çalışma.
- `23_array_files.sh`: Dosya listesini bir diziye aktarma.
- `24_array_data.sh`: CSV dosyasındaki verileri diziye yükleme.

### 5. Fonksiyonlar (Functions)
Kodun tekrar kullanılabilirliğini artıran fonksiyonlar.
- `25_function_syntax.sh`: Fonksiyon tanımlama yöntemleri.
- `26_function_basic.sh`: Basit fonksiyon tanımlama ve çağırma.
- `27_function_calculator.sh`: Fonksiyonlar ile modüler hesap makinesi.
- `28_function_args_echo.sh`: Fonksiyonlara parametre gönderme.
- `29_function_args_calc.sh`: Parametreli matematiksel fonksiyonlar.
- `29a_trap_signals.sh`: Sinyal yakalama ve temizlik işlemleri (`trap`).

### 6. Kompleks Uygulamalar ve İleri Seviye Örnekler
Öğrenilen tüm konuların bir arada kullanıldığı ve gerçek dünya senaryolarını kapsayan örnek projeler.
- `30_app_simple_calc.sh`: İnteraktif, gelişmiş hesap makinesi.
- `31_app_matrix_det.sh`: 2x2 matris determinantı hesaplama.
- `32_app_ansi_colors.sh`: ANSI renk kodları ile görsel çıktı üretme.
- `33_app_line_counter.sh`: Dosya satırlarını sayan yardımcı araç.
- `34_app_user_management.sh`: Kullanıcı yönetimi ve seviye yetkilendirme sistemi.
- `35_log_analyzer.sh`: Log dosyalarını analiz etme ve özet raporlama.
- `36_backup_manager.sh`: Dosya yedekleme ve arşivleme (tar/gz).
- `37_system_monitor.sh`: CPU, Bellek ve Disk kullanımını izleme.
- `38_temp_cleaner.sh`: Belirli yaştaki/uzantıdaki dosyaları güvenli temizleme.
- `39_network_checker.sh`: Ağ bağlantılarını ve servis erişilebilirliğini kontrol etme.

## Nasıl Kullanılır?
Dosyaları çalıştırmak için önce çalıştırma izni vermeniz gerekebilir:
```bash
chmod +x *.sh
./dosya_adi.sh
```

---
*İyi çalışmalar!*
