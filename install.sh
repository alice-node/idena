sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install unzip screen -y
cd /home
mkdir datadir && cd datadir
mkdir idenachain.db && cd idenachain.db
wget "https://sync.idena.site/idenachain.db.zip"
unzip idenachain.db.zip && rm idenachain.db.zip
cd ..
cd ..
curl -s https://api.github.com/repos/idena-network/idena-go/releases/latest | grep browser_download_url | grep idena-node-linux-0.* | cut -d '"' -f 4 | wget -qi -
mv idena-node-linux* idena-go
chmod +x idena-go
screen -d -m ./idena-go
echo Install Idena Done. Next change API and NODEKEY
