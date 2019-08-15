## ./scripts/install-dev.sh

## Make sure we have the right branch.
git fetch origin dev
git checkout dev

bash ./scripts/update.sh
