sudo su -
sudo apt update -y
python3 --version
sudo apt install build-essential python3-pip libffi-dev python3-dev python3-setuptools libssl-dev -y
sudo apt install python3-venv -y
mkdir flask_dir && cd flask_dir
python3 -m venv venv
source venv/bin/activate
pip3 install flask -y
flask --version
echo "developer1"
