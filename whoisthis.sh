#!/bin/bash

domain=$1
cnorm="\e[0m"
color1="\e[1;33m"
color2="\e[0;32m"
color3="\e[1;36m"

function whoisthis(){
  echo -e $color2"[+]$color1 Informacion de WHOIS "
  echo -e "---------------------------------------------------------------------------------------"$cnorm
  whois $domain
  
  echo -e "\n$color2[+]$color1 Informacion de DNS CNAME"
  echo -e   "---------------------------------------------------------------------------------------"$cnorm
  dig $domain CNAME +noall +answer 

  echo -e "\n$color2[+]$color1 Informacion de DNS URI"
  echo -e   "---------------------------------------------------------------------------------------"$cnorm
  dig $domain URI +noall +answer

  echo -e "\n$color2[+]$color1 Informacion de DNS MX"
  echo -e   "---------------------------------------------------------------------------------------"$cnorm
  dig $domain MX +noall +answer 

  echo -e "\n$color2[+]$color1 Informacion de DNS A Record (IPV4)"
  echo -e   "---------------------------------------------------------------------------------------"$cnorm
  dig $domain A +noall +answer 

  echo -e "\n$color2[+]$color1 Informacion de DNS AAAA Record (IPV6)"
  echo -e   "---------------------------------------------------------------------------------------"$cnorm
  dig $domain AAAA +noall +answer 

  echo -e "\n$color2[+]$color1 Informacion de DNS TXT"
  echo -e   "---------------------------------------------------------------------------------------"$cnorm
  dig $domain TXT +noall +answer 

  echo -e "\n$color2[+]$color1 Informacion de DNS SOA"
  echo -e   "---------------------------------------------------------------------------------------"$cnorm
  dig $domain SOA +noall +answer 

  echo -e "\n$color2[+]$color1 Informacion de DNS HINFO"
  echo -e   "---------------------------------------------------------------------------------------"$cnorm
  dig $domain HINFO +noall +answer 

  echo -e "\n$color2[+]$color1 Informacion de DNS NS"
  echo -e   "---------------------------------------------------------------------------------------"$cnorm
  dig $domain NS +noall +answer 


}
if [ -z "$1" ] 
then
  echo -e "\nUse: $color3 whoisthis.sh [domain] $cnorm "
else
  whoisthis
fi
