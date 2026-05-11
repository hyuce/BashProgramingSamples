#!/bin/bash

# 29a_trap_signals.sh - Sinyal Yakalama (Trap)
# Betik çalışırken beklenmedik bir kesilme (Ctrl+C gibi) olursa temizlik yapma.

# Temizlik fonksiyonu
temizlik() {
    echo -e "\nSinyal yakalandı! Geçici dosyalar siliniyor..."
    rm -f "gecici_islem.tmp"
    echo "Betiği güvenli bir şekilde kapatıyorum."
    exit 1
}

# SIGINT (Ctrl+C) veya SIGTERM sinyallerini yakaladığımızda 'temizlik' fonksiyonunu çalıştır
trap temizlik SIGINT SIGTERM

echo "Bir geçici dosya oluşturuluyor..."
touch "gecici_islem.tmp"

echo "Bu betik 10 saniye boyunca çalışacak."
echo "Bu süre zarfında Ctrl+C tuşlarına basarak betiği kesmeyi deneyin."

for i in {1..10}; do
    echo "İşlem yapılıyor... ($i/10)"
    sleep 1
done

echo "İşlem normal bir şekilde bitti."
rm -f "gecici_islem.tmp"
