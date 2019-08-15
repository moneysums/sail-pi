## ./scripts/update.sh
## Update everything.

# Update packages.
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

# Pull the latest repo.
git pull

npm ci
