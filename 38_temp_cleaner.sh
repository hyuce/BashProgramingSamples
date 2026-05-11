#!/bin/bash

# 38_temp_cleaner.sh - Geçici dosya temizleme örneği
# Belirli bir dizindeki eski dosyaları bulur ve temizler.

TARGET_DIR="./temp_files"
EXTENSION="tmp"

# Örnek dosyalar oluşturalım
mkdir -p "$TARGET_DIR"
touch "$TARGET_DIR/eski_dosya.tmp" "$TARGET_DIR/yeni_dosya.tmp" "$TARGET_DIR/notlar.txt"

echo "Temizlik dizini: $TARGET_DIR"
echo "Silinecek uzantı: *.$EXTENSION"

# Dosyaları listele
files_to_delete=$(find "$TARGET_DIR" -name "*.$EXTENSION")

if [[ -z "$files_to_delete" ]]; then
    echo "Temizlenecek dosya bulunamadı."
else
    echo "Aşağıdaki dosyalar silinecek:"
    echo "$files_to_delete"
    
    read -p "Devam etmek istiyor musunuz? (e/h): " onay
    if [[ "$onay" == "e" ]]; then
        find "$TARGET_DIR" -name "*.$EXTENSION" -delete
        echo "Temizlik tamamlandı."
    else
        echo "İşlem iptal edildi."
    fi
fi
