#buscar info con dmitry
DOMINIO=$1
cnorm="\e[0m"
color1="\e[1;33m"
color2="\e[0;32m"
color3="\e[1;36m"



if [ -z "$1" ] 
then
  echo -e "\nUse: $color3 $0 [domain] $cnorm "
else
  dmitry -winsepfbo dmitry_$DOMINIO.txt $DOMINIO
  # -w Realiza una búsqueda whois en el nombre de dominio de un host
  # -i Realiza una búsqueda whois en la dirección IP de un host
  # -n Recupera información de Netcraft.com en un host
  # -s Realiza una búsqueda de posibles subdominios
  # -e Realiza una búsqueda de posibles direcciones de correo electrónico
  # -p Realiza un escaneo de puerto TCP en un host
  # -o Guarda la salida archivo especificado dmitry_[nombre dominio].txt  
fi
