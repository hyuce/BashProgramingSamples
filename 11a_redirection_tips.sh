#!/bin/bash

# 11a_redirection_tips.sh - Çıktı ve Hata Yönlendirmeleri
# Standart çıktı (stdout) ve Hata çıktısı (stderr) yönetimi.

# 1: stdout (Standart Çıktı)
# 2: stderr (Standart Hata)

echo "--- Yönlendirme Deneyleri ---"

# 1. Başarılı çıktıyı bir dosyaya, hatayı başka bir dosyaya gönderelim
ls -l 01_input_output.sh olmayan_dosya.txt > cikti.txt 2> hata.txt

echo "Başarılı çıktılar cikti.txt içine yazıldı."
echo "Hata mesajları hata.txt içine yazıldı."

# 2. Hataları yok saymak (Çöpe göndermek)
ls -l olmayan_dosya.txt 2> /dev/null
echo "Görünmeyen bir hata denemesi yapıldı (2> /dev/null ile gizlendi)."

# 3. Çıktı ve hatayı aynı dosyada birleştirmek
ls -l 01_input_output.sh olmayan_dosya.txt &> her_sey.txt
echo "Hata ve çıktı 'her_sey.txt' içinde birleştirildi."

# 4. Mevcut bir dosyaya ekleme yapmak (>> )
echo "Bu yeni bir satır." >> cikti.txt

# Temizlik
rm cikti.txt hata.txt her_sey.txt
echo "Geçici dosyalar temizlendi."
