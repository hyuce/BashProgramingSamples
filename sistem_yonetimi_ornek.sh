#İbrahim Varola tarafından oluşturulmuştur ve düzenlenmiştir.

#!/usr/bin/env bash

clear

kullanicilar=(hyuce ibrahimvarola)
kullanici_sifre=(1234 abcd)
kullanici_seviye=(1 1)
degisken1=0
kullanici_adi_tanimlama() {
	echo -n "Tanımlayacağınız kullanıcının adını giriniz: "
	read yeni_kullanici
	kullanicilar=("${kullanicilar[@]}" "$yeni_kullanici")
}

kullanici_sifresi_belirleme() {
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

kullanici_seviyesi_belirleme() {
while [ 1 ]
do
echo -n "Seçmiş olduğunuz ${kullanicilar[$((secenek-1))]} kullanıcısının seviyesini belirleyiniz(0 ya da 1): "
read seviye
if [ $seviye -le 1 ]
	then
		kullanici_seviye=("${kullanici_seviye[$((secenek))]}" "$seviye")
		echo "Kullanıcı ${kullanicilar[$((secenek-1))]}' nın seviyesi başarıyla değiştirildi!"
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

		echo -n "Lütfen değişiklik yapmak istediğiniz kullanıcının sahip olduğu numarayı seçiniz: "
		read secenek

		if [ $secenek -gt $((degisken1)) ]
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
		echo "Yapım Aşamasında!"
	  ;;
	4)
		exit
	  ;;
	5)
		degisken1=0
		kullanici_sayisi=${#kullanicilar[*]} #kullanicilar dizisinde bulunan elemanların sayisini kullanici_sayisi degiskenine atadı
		
		
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
user_user() {
   echo "1- Kullanıcı bilgilerini görüntüle"

   echo -n "İşleminizi giriniz: "
   read islem
}

user_root #YAPIM ASAMASINDA OLDUGU ICIN FONKSIYONU DIREK CAGIRIYORUM