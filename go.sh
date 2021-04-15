#!/bin/bash
cd /home
bash -c 'echo "killall screen
rm /home/idena-*
cd /home
curl -s https://api.github.com/repos/idena-network/idena-go/releases/latest | grep browser_download_url | grep idena-node-linux-0.* | cut -d '"' -f 4 | wget -qi -
mv idena-node-linux* idena-go
chmod +x idena-go
screen -d -m ./idena-go
echo Update sukses Bos" > update.sh'
chmod +x update.sh
