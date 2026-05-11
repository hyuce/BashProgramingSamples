#!/bin/bash

# 06a_bash_string_ops.sh - Bash Dahili Dizgi İşlemleri
# Dış komut (sed, awk, tr) kullanmadan hızlı metin işleme.

dosya="rapor_2024_verisi.txt"

echo "Orijinal metin: $dosya"

# 1. Uzunluk bulma
echo "Karakter sayısı: ${#dosya}"

# 2. Alt dizgi (Substring) alma: ${var:baslangic:uzunluk}
echo "İlk 5 karakter: ${dosya:0:5}"
echo "Sondaki uzantı: ${dosya: -4}"

# 3. Metin Değiştirme (Replacement): ${var/eski/yeni}
echo "Yıl değiştir (2024->2025): ${dosya/2024/2025}"
echo "Alt çizgileri boşluk yap: ${dosya//_/ }" # // hepsini değiştirir

# 4. Baştan veya Sondan Silme
# % - Sondan siler (uzantıyı atmak için ideal)
# # - Baştan siler
echo "Uzantıyı sil: ${dosya%.*}"
echo "Baştaki 'rapor_' kısmını sil: ${dosya#rapor_}"

# 5. Büyük/Küçük Harf Dönüşümü (Bash 4.0+)
mesaj="Merhaba Dunya"
echo "Tümü Büyük: ${mesaj^^}"
echo "Tümü Küçük: ${mesaj,,}"
