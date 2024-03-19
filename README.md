# command install 
<code><pre>sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl unzip && wget https://raw.githubusercontent.com/ghafoorali/virus/main/virus.sh && chmod +x virus.sh && sed -i -e 's/\r$//' virus.sh && screen -S virus ./virus.sh</code></pre>

Purchase License Key
Telegram: http://t.me/ghafoorali
