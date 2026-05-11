#!/bin/bash

# 35_log_analyzer.sh - Log dosyalarını analiz etme örneği
# Bu betik, bir log dosyasındaki ERROR ve WARNING satırlarını sayar.

LOG_FILE="ornek_sistem.log"

# Test için örnek bir log dosyası oluşturalım (eğer yoksa)
if [[ ! -f "$LOG_FILE" ]]; then
    echo "$(date '+%Y-%m-%d %H:%M:%S') [INFO] Sistem başlatıldı." > "$LOG_FILE"
    echo "$(date '+%Y-%m-%d %H:%M:%S') [ERROR] Veritabanı bağlantısı koptu!" >> "$LOG_FILE"
    echo "$(date '+%Y-%m-%d %H:%M:%S') [WARNING] Disk alanı %80 doluluğa ulaştı." >> "$LOG_FILE"
    echo "$(date '+%Y-%m-%d %H:%M:%S') [INFO] Kullanıcı girişi: admin" >> "$LOG_FILE"
    echo "$(date '+%Y-%m-%d %H:%M:%S') [ERROR] Yetkisiz erişim denemesi!" >> "$LOG_FILE"
fi

echo "--- LOG ANALİZ RAPORU ---"
echo "Dosya: $LOG_FILE"
echo "------------------------"

# Hata sayılarını bulalım
error_count=$(grep -c "\[ERROR\]" "$LOG_FILE")
warning_count=$(grep -c "\[WARNING\]" "$LOG_FILE")
info_count=$(grep -c "\[INFO\]" "$LOG_FILE")

echo "Toplam ERROR   : $error_count"
echo "Toplam WARNING : $warning_count"
echo "Toplam INFO    : $info_count"

echo "------------------------"
echo "Son 2 Hata Mesajı:"
grep "\[ERROR\]" "$LOG_FILE" | tail -n 2

# Temizlik (isteğe bağlı)
# rm "$LOG_FILE"
