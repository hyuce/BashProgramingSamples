#!/bin/bash

# 04a_command_substitution.sh - Komut Yerine Koyma (Command Substitution)
# Bir komutun çıktısını bir değişkene atayarak kullanma örneği.

# Modern yöntem: $(komut)
# Eski yöntem: `komut` (ters tırnak) - tavsiye edilmez ama bilinmesi gerekir.

# 1. Güncel dizini ve tarihi değişkene alalım
su_an=$(date "+%H:%M:%S")
neredeyim=$(pwd)
dosya_sayisi=$(ls | wc -l)

echo "--- SİSTEM BİLGİSİ ---"
echo "Şu anki saat: $su_an"
echo "Çalıştığınız dizin: $neredeyim"
echo "Bu dizindeki dosya sayısı: $dosya_sayisi"

# 2. Komut sonucunu doğrudan başka bir işlemde kullanma
echo "Kullanıcı adınız: $(whoami)"
echo "Sistem kernel sürümü: $(uname -r)"

# 3. İleri seviye kullanım (Değişken içindeki komutu çalıştırma)
komut="ls -l"
# echo "Liste sonucu: $($komut)" # Bu bazen tehlikeli olabilir ama mümkündür.
