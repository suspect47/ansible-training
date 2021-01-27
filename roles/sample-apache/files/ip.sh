IFACE_NAME=$(ip -o link | grep 'link/ether' | grep -oE "^[[:digit:]]:[[:space:]]([[:alnum:]]+)" | cut -d" " -f 2)
IPADDRESS=$(ip -4 addr show $IFACE_NAME | grep -oP "(?<=inet ).*(?=/)")
if grep "IPV4" /var/www/html/index.html
then
sed -i -e "s/IPV4ADDRESS/$IPADDRESS/g" /var/www/html/index.html
fi 
