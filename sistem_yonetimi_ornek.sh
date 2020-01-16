#İbrahim Varola tarafından oluşturulmuştur.
#Ege Kalkandelen ve Berkant Demirci' ye yardımları için teşekkürlerimi sunarım.

#!/usr/bin/env bash

clear

kullanicilar=(root hyuce ibrahimvarola)
kullanici_sifre=(root 1234 abcd)
kullanici_seviye=(1 1 1)
degisken1=0
secenek=0
kullanici_adi_tanimlama() {
	echo -n "Tanımlayacağınız kullanıcının adını giriniz: "
	read yeni_kullanici
	kullanicilar=("${kullanicilar[@]}" "$yeni_kullanici")
}

kullanici_seviyesi_belirleme() {
while [ 1 ]
do
read -p "Seçmiş olduğunuz ${kullanicilar[$((secenek-1))]} kullanıcısının seviyesini giriniz(1 - 0): " kull_sev
if [ $kull_sev -le 1 ]
	then
		kullanici_seviye[$((secenek-1))]=$kull_sev
		echo "işlem tamam!!"
		break
else
	echo "Yanlış değer girdiniz, lütfen tekrar deneyiniz."
fi
done
}

kullanici_sifresi_belirleme() {
	read -p "Seçmiş olduğunuz ${kullanicilar[$((secenek-1))]} kullanıcısının şifresini belirleyiniz: " kull_pass
	kullanici_sifre[$((secenek-1))]=$kull_pass
}

yeni_kullanici_sifresi_belirleme() {
	echo -n "Tanımlamış olduğunuz $yeni_kullanici kullanıcısının şifresini belirleyiniz: "
	read yeni_kullanici_sifre
	kullanici_sifre=("${kullanici_sifre[@]}" "$yeni_kullanici_sifre")
}

yeni_kullanici_seviyesi_belirleme() {
while [ 1 ]
do
echo -n "Tanımlamış olduğunuz $yeni_kullanici kullanıcısının seviyesini belirleyiniz(0 ya da 1): "
read yeni_kullanici_seviye
if [ $yeni_kullanici_seviye -le 1 ]
	then
		kullanici_seviye=("${kullanici_seviye[@]}" "$yeni_kullanici_seviye")
		echo "Kullanıcı $yeni_kullanici sisteme başarıyla tanımlandı!"
		break
else
	echo "Yanlış değer girdiniz, lütfen tekrar deneyiniz."
fi
done
}

user_root() {
   while [ 1 ] 
   do
   echo "-----------------------------------------------------------------------"

   echo "1- Yeni kullanıcı tanımlama"
   echo "2- Kullanıcı seviyesi belirleme"
   echo "3- Kullanıcı şifresi değiştirme-belirleme"
   echo "4- Çıkış"

   echo -n "İşleminizi giriniz: "
   read islem

   case $islem in
	1)
		echo "-----------------------------------------------------------------------"

		kullanici_adi_tanimlama
	
		kullanici_sifresi_belirleme
	
		yeni_kullanici_seviyesi_belirleme

		
	   ;;
	2)
		clear
		while [ 1 ]
		do
		echo "-----------------------------------------------------------------------"
		degisken1=0
		kullanici_sayisi=${#kullanicilar[*]}
		
		while [ $degisken1 -lt $kullanici_sayisi ]
		do
    	echo "$((degisken1+1))- ${kullanicilar[$degisken1]}"
    	degisken1=$((degisken1+1))
		done
		
		read -p "Lütfen değişiklik yapmak istediğiniz kullanıcının sahip olduğu numarayı seçiniz: " secenek

		if [ $secenek -gt $((degisken1)) -o $secenek -eq 0 ]
			then
				echo "Yanlış seçenek seçtiniz, lütfen tekrar deneyiniz."
		else
			kullanici_seviyesi_belirleme
			break
		fi
		done
		echo
	  ;;
	3)
		clear
		while [ 1 ]
		do
		echo "-----------------------------------------------------------------------"
		degisken1=0
		kullanici_sayisi=${#kullanicilar[*]}
		
		while [ $degisken1 -lt $kullanici_sayisi ]
		do
    	echo "$((degisken1+1))- ${kullanicilar[$degisken1]}"
    	degisken1=$((degisken1+1))
		done
		

		read -p "Lütfen değişiklik yapmak istediğiniz kullanıcının sahip olduğu numarayı seçiniz: " secenek

		if [ $secenek -gt $((degisken1)) -o $secenek -eq 0 ]
			then
				echo "Yanlış seçenek seçtiniz, lütfen tekrar deneyiniz."
		else
			kullanici_sifresi_belirleme
			break
		fi
		done
		echo
	  ;;
	4)
		exit
	  ;;
	5)
		degisken1=0
		kullanici_sayisi=${#kullanicilar[*]} #kullanicilar dizisinde bulunan elemanların sayisini kullanici_sayisi degiskenine atadı
		
		echo
		while [ $degisken1 -lt $kullanici_sayisi ]
		do
    	echo "kad = ${kullanicilar[$degisken1]} ksif= ${kullanici_sifre[$degisken1]} ksev= ${kullanici_seviye[$degisken1]}"
    	degisken1=$((degisken1+1))
		done
		;;
	*)
	  echo "Yanlış seçenek numarası girdiniz, tekrar deneyiniz."
	;;
   esac
done
}
clear
echo "-----------------------------------------------------------------------"
echo "Kullanıcı adınızı Giriniz: "
read kad
echo "-----------------------------------------------------------------------"
echo "Şifrenizi Giriniz: "
read -s sifre

if  [ $kad == ibrahimvarola -a $sifre == 1234 ]
  then
      clear
      echo "Hoşgeldiniz İbrahim Bey! Lütfen işlemlerinizi seçiniz: "
      if [ $ibrahimvarola_seviye == 1 ]
        then
            user_root
        else 
            user_user
       fi





elif [ $kad == hyuce -a $sifre == 9876 ]
  then
      clear
      echo "Hoşgeldiniz Hüseyin hocam! Lütfen işlemlerinizi seçiniz: "
      user_root
else
      echo "Lütfen giriş işlemlerinizi kontrol ediniz veya sistem yöneticinizden kayıdınızı yapmasını isteyiniz."
fi
