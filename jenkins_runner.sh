clear

echo "   _________           ______ _____               ";
echo "   ______  /______________  /____(_)______________";
echo "   ___ _  /_  _ \\_  __ \\_  //_/_  /__  __ \\_  ___/";
echo "   / /_/ / /  __/  / / /  ,<  _  / _  / / /(__  ) ";
echo "   \\____/  \\___//_/ /_//_/|_| /_/  /_/ /_//____/  ";
echo "";
echo "                            Made by :";
echo "                                  - Anass AIT BEN EL ARBI";
echo "                                  - Hajar EL HAKOUR";
echo "";

function trap_ctrlc()
{
    echo "Ctrl-C caught...performing clean up"

    sudo systemctl stop jenkins

    exit 2
}


echo '[*] install finished ! ';


echo "[*] Oppening Jenkins..."
sudo systemctl daemon-reload
sudo systemctl stop jenkins

read -p "[*] Enter the port you wish to use : " PORT;
echo "you have chosen port $PORT"


# ouverture du port pour utiliser Jenkins sur toute machine connecté au meme réseau.
echo "[*] oppening firewall port ${PORT}";
sudo ufw allow ${PORT}
sudo ufw status

echo "[*] showing path for jenkins.war";
whereis jenkins

trap "trap_ctrlc" 2


echo "[*] Starting jenkins";
cd /usr/share/jenkins
xdg-open http://localhost:${PORT}
java -jar jenkins.war --httpPort=${PORT}

