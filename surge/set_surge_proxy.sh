#! /usr/bin bash
# @Author: yxjxx
# @Date:   2016-02-25 21:19:57
# @Last Modified by:   yxjxx
# @Last Modified time: 2016-04-20 15:29:00
# set them by yourself
PASSWD=<Your_Password>
domain="127.0.0.1"
portnumber="6152"
socksPortNumber="6153"
domains="192.168.0.0/16 10.0.0.0/8 172.16.0.0/12 localhost *.local"

echo $PASSWD | sudo -S networksetup -setwebproxy "Thunderbolt Ethernet" ${domain} ${portnumber} off
echo $PASSWD | sudo -S networksetup -setwebproxy "Wi-Fi" ${domain} ${portnumber} off

echo $PASSWD | sudo -S networksetup -setsecurewebproxy "Thunderbolt Ethernet" ${domain} ${portnumber} off
echo $PASSWD | sudo -S networksetup -setsecurewebproxy "Wi-Fi" ${domain} ${portnumber} off

echo $PASSWD | sudo -S networksetup -setproxybypassdomains "Thunderbolt Ethernet" ${domain} ${domains}
echo $PASSWD | sudo -S networksetup -setproxybypassdomains "Wi-Fi" ${domain} ${domains}

echo $PASSWD | sudo -S networksetup -setsocksfirewallproxy "Thunderbolt Ethernet" ${domain} ${socksPortNumber}
echo $PASSWD | sudo -S networksetup -setsocksfirewallproxy "Wi-Fi" ${domain} ${socksPortNumber}
