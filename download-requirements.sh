#!/bin/bash
wget "https://media.forgecdn.net/files/2637/279/FTB+Presents+Direwolf20+1.12-1.12.2-2.4.0-Server.zip"
wget "https://builds.openlogic.com/downloadJDK/openlogic-openjdk-jre/8u262-b10/openlogic-openjdk-jre-8u262-b10-linux-x64-deb.deb"


sudo apt-get udpate && sudo apt-get upgrade -y;

sudo apt-get install openlogic-openjdk-jre-8u262-b10-linux-x64-deb.deb -y;
sudo update-alternatives --set java /usr/lib/jvm/openlogic-openjdk-8-hotspot-jre-amd64/bin/java;

rm "openlogic-openjdk-jre-8u262-b10-linux-x64-deb.deb"

mkdir "FTB-Minecraft-Server";
mv "FTB+Presents+Direwolf20+1.12-1.12.2-2.4.0-Server.zip" "FTB-Minecraft-Server";

cd "FTB-Minecraft-Server"|| return;
unzip "FTB+Presents+Direwolf20+1.12-1.12.2-2.4.0-Server.zip"
rm "FTB+Presents+Direwolf20+1.12-1.12.2-2.4.0-Server.zip"
chmod +x "ServerStart.sh"
cd ..

cp "eula.txt" "FTB-Minecraft-Server"
