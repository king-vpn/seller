#!/bin/bash
clear
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
clear
echo -e "   \e[41;97;1mUPDATE SCRIPT NEW VERSION\e[0m"
echo -e ""
# // Delete data Lama
cd /usr/bin
rm -rf menu
rm -rf dashboard
rm -rf menu-backup
rm -rf menu-ssh
rm -rf menu-trojan
rm -rf menu-vlesss
rm -rf menu-vmess
rm -rf menu-noobzvpns
rm -rf menu-ss
rm -rf menu-ipsec
rm -rf menu-udp
rm -rf setting
rm -rf restart
rm -rf running
rm -rf sistem
rm -rf about
rm -rf updateyes
rm -rf running
rm -rf menu-bot
rm -rf addhost
rm -rf nginx-ssl
rm -rf statushariini
rm -rf trial-generator
# // Download Data Baru
# // menu
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/king-vpn/seller/master/menu/menu.sh" && chmod +x /usr/bin/menu
wget -q -O /usr/bin/dashboard "https://raw.githubusercontent.com/king-vpn/seller/master/menu/dashboard.sh" && chmod +x /usr/bin/dashboard
wget -q -O /usr/bin/menu-ssh "https://raw.githubusercontent.com/king-vpn/seller/master/menu/menu-ssh.sh" &&  chmod +x /usr/bin/menu-ssh
wget -q -O /usr/bin/menu-trojan "https://raw.githubusercontent.com/king-vpn/seller/master/menu/menu-trojan.sh" && chmod +x /usr/bin/menu-trojan
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/king-vpn/seller/master/menu/menu-backup.sh" && chmod +x /usr/bin/menu-backup
wget -q -O /usr/bin/menu-vless "https://raw.githubusercontent.com/king-vpn/seller/master/menu/menu-vless.sh" && chmod +x /usr/bin/menu-vless
wget -q -O /usr/bin/menu-vmess "https://raw.githubusercontent.com/king-vpn/seller/master/menu/menu-vmess.sh" && chmod +x /usr/bin/menu-vmess
wget -q -O /usr/bin/menu-ss "https://raw.githubusercontent.com/king-vpn/seller/master/menu/menu-ss.sh" && chmod +x /usr/bin/menu-ss
wget -q -O /usr/bin/menu-noobzvpns "https://raw.githubusercontent.com/king-vpn/seller/master/menu/menu-noobzvpns.sh" && chmod +x /usr/bin/menu-noobzvpns
wget -q -O /usr/bin/trial-generator "https://raw.githubusercontent.com/king-vpn/seller/master/trial/trial-generator.sh" && chmod +x /usr/bin/trial-generator
wget -q -O /usr/bin/menu-ipsec "https://raw.githubusercontent.com/king-vpn/seller/master/ipsec/menu-ipsec.sh" && chmod +x /usr/bin/menu-ipsec
wget -q -O /usr/bin/system "https://raw.githubusercontent.com/king-vpn/seller/master/menu/sistem.sh" && chmod +x /usr/bin/sistem
wget -q -O /usr/bin/about "https://raw.githubusercontent.com/king-vpn/seller/master/menu/about.sh" &&  chmod +x /usr/bin/about

wget -q -O /usr/bin/setting "https://raw.githubusercontent.com/king-vpn/seller/master/Themes/setting.sh" && chmod +x /usr/bin/setting
wget -q -O /usr/bin/upsc "https://raw.githubusercontent.com/king-vpn/seller/master/menu/updateyes.sh" && chmod +x /usr/bin/updateyes
wget -q -O /usr/bin/running "https://raw.githubusercontent.com/king-vpn/seller/master/menu/running.sh" && chmod +x /usr/bin/running
wget -q -O /usr/bin/restart "https://raw.githubusercontent.com/king-vpn/seller/master/menu/restart.sh" && chmod +x /usr/bin/restart
wget -q -O /usr/bin/menu-udp "https://raw.githubusercontent.com/king-vpn/seller/master/menu/menu-udp.sh" && chmod +x /usr/bin/menu-udp
wget -q -O /usr/bin/menu-bot "https://raw.githubusercontent.com/king-vpn/seller/master/menu/menu-bot.sh" && chmod +x /usr/bin/menu-bot
wget -q -O /usr/bin/addhost  "https://raw.githubusercontent.com/king-vpn/seller/master/addhost.sh" && chmod +x /usr/bin/addhost
wget -q -O /usr/bin/addhost  "https://raw.githubusercontent.com/king-vpn/seller/master/nginx-ssl.sh" && chmod +x /usr/bin/nginx-ssl
wget -q -O /usr/bin/addhost  "https://raw.githubusercontent.com/king-vpn/seller/master/statushariini" && chmod +x /usr/bin/statushariini
echo -e "sleep 3 "
clear
echo -e "\e[32;1mSuccessfully\e[0m"
sleep 2
clear
dashboard
