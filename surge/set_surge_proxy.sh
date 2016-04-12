#! /usr/bin bash
# @Author: yxjxx
# @Date:   2016-02-25 21:19:57
# @Last Modified by:   yxjxx
# @Last Modified time: 2016-04-12 19:27:36
# set them by yourself
PASSWD=<Your_Password>
domain="127.0.0.1"
portnumber="6152"
domain2="localhost"

echo $PASSWD | sudo -S networksetup -setwebproxy "Thunderbolt Ethernet" ${domain} ${portnumber} off
echo $PASSWD | sudo -S networksetup -setwebproxy "Wi-Fi" ${domain} ${portnumber} off

echo $PASSWD | sudo -S networksetup -setsecurewebproxy "Thunderbolt Ethernet" ${domain} ${portnumber} off
echo $PASSWD | sudo -S networksetup -setsecurewebproxy "Wi-Fi" ${domain} ${portnumber} off

echo $PASSWD | sudo -S networksetup -setproxybypassdomains "Thunderbolt Ethernet" ${domain} ${domain2}
echo $PASSWD | sudo -S networksetup -setproxybypassdomains "Wi-Fi" ${domain} ${domain2}

echo $PASSWD | sudo -S networksetup -setsocksfirewallproxy "Thunderbolt Ethernet" ${domain} ${portnumber}
echo $PASSWD | sudo -S networksetup -setsocksfirewallproxy "Wi-Fi" ${domain} ${portnumber}
