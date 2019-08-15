## ./scripts/install.sh

BRANCH="master"

## Set the branch if necessary.
if [ "$1" != "" ]; then
    BRANCH="$1"
fi

git fetch origin $BRANCH
git checkout $BRANCH

## Now update from the current branch.
bash ./scripts/update.sh
