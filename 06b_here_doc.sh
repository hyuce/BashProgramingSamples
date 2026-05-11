#!/bin/bash

# 06b_here_doc.sh - Burada Dokümanlar (Here Documents)
# Çok satırlı metinleri ekrana basmak veya dosyalara yazmak için kullanılır.

# 1. Ekrana şablon metin basma
cat << EOF
---------------------------------------
   SİSTEM HOŞGELDİN MESAJI
---------------------------------------
Kullanıcı: $(whoami)
Tarih: $(date)
Durum: Sistem aktif ve çalışıyor.
---------------------------------------
EOF

# 2. Çok satırlı bir yapılandırma dosyası oluşturma
cat << CONFIG > uygulama_ayarlar.conf
sunucu_adresi=192.168.1.100
port=8080
log_seviyesi=DEBUG
zaman_asimi=30
CONFIG

echo "uygulama_ayarlar.conf dosyası oluşturuldu."

# 3. Girintili metinler için (Tab karakterlerini yok sayar)
cat <<- 'NOT'
	Bu satırların başındaki Tab karakterleri
	Bash tarafından otomatik olarak temizlenir.
	Tek tırnak kullanımı $( ) gibi komutların
	çalıştırılmasını engeller (literal text).
NOT

# Temizlik
rm uygulama_ayarlar.conf
