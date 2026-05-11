#!/bin/bash

# 39_network_checker.sh - Ağ ve servis kontrolü örneği
# Belirtilen adreslerin erişilebilirliğini kontrol eder.

SITES=("google.com" "github.com" "bilinmeyen_site_deneme.com")

echo "--- AĞ ERİŞİM KONTROLÜ ---"
echo "Tarih: $(date)"
echo "--------------------------"

for site in "${SITES[@]}"; do
    echo -n "$site kontrol ediliyor... "
    
    # 2 saniye zaman aşımı ile 1 paket ping atalım
    if ping -c 1 -W 2 "$site" > /dev/null 2>&1; then
        echo "[ERİŞİLEBİLİR]"
    else
        echo "[ERİŞİLEMEZ]"
    fi
done

echo "--------------------------"
echo "Kontrol tamamlandı."
