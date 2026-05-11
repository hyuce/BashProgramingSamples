#!/bin/bash

# 37_system_monitor.sh - Sistem kaynaklarını izleme örneği
# CPU, Bellek ve Disk kullanımını kontrol eder.

echo "--- SİSTEM DURUMU ---"
echo "Tarih: $(date)"
echo "---------------------"

# Disk Kullanımı (Ana dizin için)
disk_usage=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')
echo "Disk Kullanımı: %$disk_usage"

# Bellek Kullanımı
free_mem=$(free -m | awk 'NR==2 {printf "%.2f", $3*100/$2}')
echo "Bellek Kullanımı: %$free_mem"

# Uptime (Çalışma Süresi)
up_time=$(uptime -p)
echo "Sistem Çalışma Süresi: $up_time"

# Uyarı Mekanizması
if [[ "$disk_usage" -gt 80 ]]; then
    echo "UYARI: Disk alanı kritik seviyede (%$disk_usage)!"
fi

if [[ $(echo "$free_mem > 90" | bc -l) -eq 1 ]]; then
    echo "UYARI: Bellek kullanımı çok yüksek (%$free_mem)!"
fi

echo "---------------------"
