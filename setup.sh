set -e
# https://www.docker.com/blog/happy-pi-day-docker-raspberry-pi/

# install docker
sudo apt-get update && apt-get install apt-transport-https ca-certificates software-properties-common git -y

curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh

sudo usermod -aG docker ${USER}

sudo curl https://download.docker.com/linux/raspbian/gpg

sudo sh -c 'echo "deb https://download.docker.com/linux/raspbian/ stretch stable" >> /etc/apt/sources.list'

sudo systemctl start docker.service

# restart shell?

# install docker-compose

sudo apt install python3 python3-pip -y

sudo pip3 install docker-compose

git clone https://github.com/nandiheath/peertube-rpi-setup.git

cd peertube-rpi-setup

docker-compose up -d