sudo su -
sudo apt update
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt install nodejs -y
node -v
npm install -g yarn
yarn create react-app myapplication
cd myapplication
yarn start
