## ./scripts/install.sh

# Add up-to-date nodejs repo.
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

# Update packages.
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y


# Install dependencies
sudo apt install -y nodejs npm

git config --global user.email "pi@example.com"
get config --global user.name "Raspberry Pi"

BRANCH="master"

## Set the branch if necessary.
if [ "$1" != "" ]; then
    BRANCH="$1"
    git checkout master
    git branch -d $BRANCH
fi

git fetch origin $BRANCH
git checkout $BRANCH

npm i
