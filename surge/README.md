#Set proxy url for surge with alfred

##Get your networksetsetvices names

```
networksetup -listallnetworkservices
```

##Set proxy url

```
echo $PASSWD | sudo -S networksetup -setwebproxy "Wi-Fi" ${domain} ${portnumber} off

echo $PASSWD | sudo -S networksetup -setsecurewebproxy "Wi-Fi" ${domain} ${portnumber} off

echo $PASSWD | sudo -S networksetup -setproxybypassdomains "Wi-Fi" ${domain} ${domain2}
````

##Official manual page for networksetup command

[man networksetup](https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man8/networksetup.8.html)

##Why use this script

[偶尔在 ShadowsocksX 和 Surge for Mac 之间切换，不想手动修改 http 和 https 代理地址](https://twitter.com/yxjxx/status/702852960842190853)
