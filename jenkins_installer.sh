clear

echo "   _________           ______ _____               ";
echo "   ______  /______________  /____(_)______________";
echo "   ___ _  /_  _ \\_  __ \\_  //_/_  /__  __ \\_  ___/";
echo "   / /_/ / /  __/  / / /  ,<  _  / _  / / /(__  ) ";
echo "   \\____/  \\___//_/ /_//_/|_| /_/  /_/ /_//____/  ";
echo "";
echo "________             _____       ___________            ";
echo "____  _/_______________  /______ ___  /__  /____________";
echo " __  / __  __ \\_  ___/  __/  __ \`/_  /__  /_  _ \\_  ___/";
echo "__/ /  _  / / /(__  )/ /_ / /_/ /_  / _  / /  __/  /    ";
echo "/___/  /_/ /_//____/ \\__/ \\__,_/ /_/  /_/  \\___//_/     ";
echo "";
echo "                            Made by :";
echo "                                  - Anass AIT BEN EL ARBI";
echo "                                  - Hajar EL HAKOUR";
echo "";

echo "[*] Installation de Jenkins en cours...";

echo "[*] downloading the key...";
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo "[*] adding the jebnkins to the sources List...";
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

echo "[*] installing certificates";
sudo apt install ca-certificates -y
sudo sed -i -e 's|disco|eoan|g' /tec/apt/sources.list

sudo apt-get update -y

echo "[*] Installing Open-JDK cersion 11";
sudo apt install openjdk-11-jdk -y

echo "[*] Checking java version..."
java --version

echo "[*] installing jenkins";
sudo apt-get install jenkins -y



echo "[*] installing maven";
sudo apt install maven -y

echo '[*] install finished ! ';

