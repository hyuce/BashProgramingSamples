#!/bin/bash
hyuce_seviye=1

user_root() {
   echo "1- Yeni kullanıcı tanımlama"
   echo "2- Kullanıcı seviyesi belirleme"
   echo "3- Kullanıcı şifresi değiştirme-belirleme"

   echo -n "İşleminizi giriniz: "
   read islem

   case $islem in
	1)
          echo "Hala programlanma aşamasında :( "
	  ;;
	2)
          echo -n "Seviyesini değiştirmek istediğiniz kullanıcının kullanıcı adını giriniz: "
	  read kullanici_adi
	  if [ $kullanici_adi == ibrahimvarola ]
	    then
		echo -n "Lütfen kullanıcı seviyesini giriniz(0-1): "
		read kullanici_seviye
		if [ $kullanici_seviye -gt 1 ]
		  then
		     echo "Yanlış seviye girdiniz."
		else
		  ibrahimvarola_seviye=kullanici_seviye
		fi
	else 
	    echo "Yanlış kullanıcı adı girdiniz."
	  fi 
	;;
	3)
	  echo "Programlama aşamasında!"
	;;
	*)
	  echo "Yanlış seçenek numarası girdiniz, tekrar deneyiniz."
	;;
   esac
}
user_user() {
   echo "1- Kullanıcı bilgilerini görüntüle"

   echo -n "İşleminizi giriniz: "
   read islem
}

echo "Kullanıcı adınızı Giriniz: "
read kad

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
