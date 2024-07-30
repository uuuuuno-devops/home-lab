echo "   __  __          __      __                          __                "
echo "  / / / /___  ____/ /___ _/ /____     _______  _______/ /____  ____ ___  "
echo " / / / / __ \/ __  / __ \`/ __/ _ \   / ___/ / / / ___/ __/ _ \/ __ \`__ \ "
echo "/ /_/ / /_/ / /_/ / /_/ / /_/  __/  (__  ) /_/ (__  ) /_/  __/ / / / / / "
echo "\____/ .___/\__,_/\__,_/\__/\___/  /____/\__, /____/\__/\___/_/ /_/ /_/  "
echo "    /_/                                 /____/                           " 
echo ""

sudo apt update -y
sudo apt upgrade 
mkdir temp
cd temp

echo "    ____           __        _____                    __           __             "
echo "   /  _/___  _____/ /_____ _/ / (_)___  ____ _   ____/ /___  _____/ /_____  _____ "
echo "   / // __ \/ ___/ __/ __ \`/ / / / __ \/ __ \`/  / __  / __ \/ ___/ //_/ _ \/ ___/ "
echo " _/ // / / (__  ) /_/ /_/ / / / / / / / /_/ /  / /_/ / /_/ / /__/ ,< /  __/ /     "
echo "/___/_/ /_/____/\__/\__,_/_/_/_/_/ /_/\__, /   \__,_/\____/\___/_/|_|\___/_/      "
echo "                                     /____/                                       "
echo ""

sudo apt install curl
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

echo "    ____           __        _____                __                      __           __             "
echo "   /  _/___  _____/ /_____ _/ / (_)___  ____ _   / /___ _____  __  ______/ /___  _____/ /_____  _____ "
echo "   / // __ \/ ___/ __/ __ \`/ / / / __ \/ __ \`/  / / __ \`/_  / / / / / __  / __ \/ ___/ //_/ _ \/ ___/ "
echo " _/ // / / (__  ) /_/ /_/ / / / / / / / /_/ /  / / /_/ / / /_/ /_/ / /_/ / /_/ / /__/ ,< /  __/ /     "
echo "/___/_/ /_/____/\__/\__,_/_/_/_/_/ /_/\__, /  /_/\__,_/ /___/\__, /\__,_/\____/\___/_/|_|\___/_/      "
echo "                                     /____/                 /____/                                    "
echo ""

mkdir lazydocker-temp
LAZYDOCKER_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazydocker/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
curl -Lo lazydocker.tar.gz "https://github.com/jesseduffield/lazydocker/releases/latest/download/lazydocker_${LAZYDOCKER_VERSION}_Linux_x86_64.tar.gz"
tar xf lazydocker.tar.gz -C lazydocker-temp
sudo mv lazydocker-temp/lazydocker /usr/local/bin
rm -rf lazydocker.tar.gz lazydocker-temp

cd ../
rm -fr temp
