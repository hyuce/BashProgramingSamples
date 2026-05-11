#!/bin/bash

# 36_backup_manager.sh - Dosya yedekleme ve arşivleme örneği
# Bu betik, belirtilen bir dizini sıkıştırarak yedekler.

SOURCE_DIR="./"
BACKUP_DIR="./backups"
DATE_TAG=$(date +%Y%m%d_%H%M%S)
BACKUP_NAME="yedek_$DATE_TAG.tar.gz"

# Yedekleme dizini yoksa oluşturalım
if [[ ! -d "$BACKUP_DIR" ]]; then
    mkdir -p "$BACKUP_DIR"
    echo "Yedekleme dizini oluşturuldu: $BACKUP_DIR"
fi

echo "Yedekleme başlatılıyor: $SOURCE_DIR -> $BACKUP_DIR/$BACKUP_NAME"

# Sıkıştırma işlemi (backups dizini hariç tutularak)
tar --exclude="$BACKUP_DIR" -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR" 2>/dev/null

if [[ $? -eq 0 ]]; then
    echo "Yedekleme başarıyla tamamlandı."
    echo "Dosya: $(du -sh "$BACKUP_DIR/$BACKUP_NAME")"
else
    echo "Yedekleme sırasında bir hata oluştu!"
fi

# 7 günden eski yedekleri temizleme (örnek amaçlı yorum satırı)
# find "$BACKUP_DIR" -name "*.tar.gz" -mtime +7 -exec rm {} \;
