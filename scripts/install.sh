## ./scripts/install.sh

$BRANCH=master

## Set the branch if necessary.
if [ "$0" != "" ]; then
    $BRANCH="$0"
fi

git fetch origin $BRANCH
git checkout $BRANCH

## Now update from the current branch.
bash ./scripts/update.sh
