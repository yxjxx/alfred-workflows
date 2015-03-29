# set them by yourself
PASSWD=<Your password>
proxy_url="http://p.getqujing.com/paths/xxxxxxxx.pac"

case "{query}" in
    1)
        echo $PASSWD | sudo -s "networksetup -setautoproxyurl \"Thunderbolt Ethernet\" ${proxy_url}"
    ;;
    2)
        echo $PASSWD | sudo -s "networksetup -setautoproxyurl \"Wi-Fi\" ${proxy_url}"
    ;;
    3)
        echo $PASSWD | sudo -s "networksetup -setautoproxyurl \"802.11 n WLAN\" ${proxy_url}"
    ;;
    4)
        echo $PASSWD | sudo -s "networksetup -setautoproxyurl \"Thunderbolt Ethernet\" ${proxy_url}"
        echo $PASSWD | sudo -s "networksetup -setautoproxyurl \"Wi-Fi\" ${proxy_url}"
        echo $PASSWD | sudo -s "networksetup -setautoproxyurl \"802.11 n WLAN\" ${proxy_url}"
    ;;
esac
