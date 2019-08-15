## ./scripts/install.sh

# Update packages.
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

# Install dependencies
sudo apt install -y nodejs npm

BRANCH="master"

## Set the branch if necessary.
if [ "$1" != "" ]; then
    BRANCH="$1"
fi

git fetch origin $BRANCH
git checkout $BRANCH

npm i
