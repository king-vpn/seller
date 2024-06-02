#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);

IZIN=$(curl -sS https://raw.githubusercontent.com/myridwan/izinvps/ipuk/ip | awk '{print $4}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo "IZIN DI TERIMA!!"
else
clear
figlet "Akses di tolak!! Silakan Hubungi Admin" | lolcat
exit 0
fi

#install
cp /media/cybervpn/var.txt /tmp
cp /root/cybervpn/var.txt /tmp
rm -rf cybervpn
apt update && apt upgrade -y
apt install python3 python3-pip -y
apt install sqlite3 -y
cd /media/
rm -rf cybervpn
wget myrid.digital/drg/botssh/cybervpn.zip
unzip cybervpn.zip
cd cybervpn
rm var.txt
rm database.db
pip3 install -r requirements.txt
pip install pillow
pip install speedtest-cli
pip3 install aiohttp
pip3 install paramiko
#isi data
azi=$(cat /root/nsdomain)
domain=$(cat /etc/xray/domain)
echo "INSTALL BOT CREATE SSH via TELEGRAM"
read -e -p "[*] Input Your Id Telegram :" admin
read -e -p "[*] Input Your bot Telegram :" token
read -e -p "[*] Input username Telegram :" user

cat > /media/cybervpn/var.txt << END
ADMIN="$admin"
BOT_TOKEN="$token"
DOMAIN="$domain"
DNS="$azi"
PUB="7fbd1f8aa0abfe15a7903e837f78aba39cf61d36f183bd604daa2fe4ef3b7b59"
OWN="$user"
SALDO="100000"
END


clear
echo "Done"
echo "Your Data Bot"
echo -e "==============================="
echo "Api Token     : $token"
echo "ID            : $admin"
echo "DOMAIN        : $domain"
echo -e "==============================="
echo "Setting done"


rm -f /usr/bin/nenen

echo -e '#!/bin/bash\ncd /media/\npython3 -m cybervpn' > /usr/bin/nenen


chmod 777 /usr/bin/nenen

cat > /etc/systemd/system/cybervpn.service << END
[Unit]
Description=Simple CyberVPN - @CyberVPN
After=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/nenen
Restart=always

[Install]
WantedBy=multi-user.target

END
systemctl daemon-reload
systemctl start cybervpn
systemctl enable cybervpn

clear
echo "downloading asset"

wget -q -O /usr/bin/panelbot "myrid.digital/drg/botssh/panelbot.sh" && chmod +x /usr/bin/panelbot


wget -q -O /usr/bin/add-ip-bot "myrid.digital/drg/botssh/add-ip-bot.sh" && chmod +x /usr/bin/add-ip-bot


wget -q -O /usr/bin/addnoobz "myrid.digital/drg/botssh/addnoobz.sh" && chmod +x /usr/bin/addnoobz



wget -q -O /media/log-install.txt "myrid.digital/drg/botssh/log-install.txt"



wget -q -O /usr/bin/add-vless "myrid.digital/drg/botssh/add-vless.sh" && chmod +x /usr/bin/add-vless

wget -q -O /usr/bin/addtr "myrid.digital/drg/botssh/addtr.sh" && chmod +x /usr/bin/addtr


wget -q -O /usr/bin/addws "myrid.digital/drg/botssh/addws.sh" && chmod +x /usr/bin/addws


wget -q -O /usr/bin/addss "myrid.digital/drg/botssh/addss.sh" && chmod +x /usr/bin/addss

wget -q -O /usr/bin/cek-ssh "myrid.digital/drg/botssh/cek-ssh.sh" && chmod +x /usr/bin/cek-ssh



wget -q -O /usr/bin/cek-ss "myrid.digital/drg/botssh/cek-ss.sh" && chmod +x /usr/bin/cek-ss




wget -q -O /usr/bin/cek-tr "myrid.digital/drg/botssh/cek-tr.sh" && chmod +x /usr/bin/cek-tr

wget -q -O /usr/bin/cek-vless "myrid.digital/drg/botssh/cek-vless.sh" && chmod +x /usr/bin/cek-vless

wget -q -O /usr/bin/cek-ws "myrid.digital/drg/botssh/cek-ws.sh" && chmod +x /usr/bin/cek-ws

wget -q -O /usr/bin/del-vless "myrid.digital/drg/botssh/del-vless.sh" && chmod +x /usr/bin/del-vless




wget -q -O /usr/bin/cek-noobz "myrid.digital/drg/botssh/cek-noobz.sh" && chmod +x /usr/bin/cek-noobz



wget -q -O /usr/bin/deltr "myrid.digital/drg/botssh/deltr.sh" && chmod +x /usr/bin/deltr

wget -q -O /usr/bin/delws "myrid.digital/drg/botssh/delws.sh" && chmod +x /usr/bin/delws



wget -q -O /usr/bin/delss "myrid.digital/drg/botssh/delss.sh" && chmod +x /usr/bin/delss



wget -q -O /usr/bin/renew-ss "myrid.digital/drg/botssh/renew-ss.sh" && chmod +x /usr/bin/renew-ss


wget -q -O /usr/bin/renewtr "myrid.digital/drg/botssh/renewtr.sh" && chmod +x /usr/bin/renewtr


wget -q -O /usr/bin/renewvless "myrid.digital/drg/botssh/renewvless.sh" && chmod +x /usr/bin/renewvless


wget -q -O /usr/bin/renewws "myrid.digital/drg/botssh/renewws.sh" && chmod +x /usr/bin/renewws


wget -q -O /usr/bin/cek-mws "myrid.digital/drg/botssh/cek-mws.sh" && chmod +x /usr/bin/cek-mws

wget -q -O /usr/bin/cek-mvs "myrid.digital/drg/botssh/cek-mvs.sh" && chmod +x /usr/bin/cek-mvs


wget -q -O /usr/bin/cek-mss "myrid.digital/drg/botssh/cek-mss.sh" && chmod +x /usr/bin/cek-mss



wget -q -O /usr/bin/cek-mts "myrid.digital/drg/botssh/cek-mts.sh" && chmod +x /usr/bin/cek-mts

cp /tmp/var.txt /media/cybervpn

echo " Installations complete, type /menu on your bot "

rm /media/cybervpn.zip