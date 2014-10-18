# set it by yourself
proxy_url="http://p.getqujing.com/paths/xxxxxxxx.pac"

case "{query}" in
    1)
		networksetup -setautoproxyurl "Thunderbolt Ethernet" ${proxy_url}
    echo "set qujin for en4"
    ;;
    2)
		networksetup -setautoproxyurl "Wi-Fi" ${proxy_url}
    echo "set qujin for Wi-Fi"
    ;;
    12)
    networksetup -setautoproxyurl "Thunderbolt Ethernet" ${proxy_url}
    networksetup -setautoproxyurl "Wi-Fi" ${proxy_url}
    echo "set qujin for Wi-Fi and en4"
    ;;
esac
