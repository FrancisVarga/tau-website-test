#!/bin/bash
export NVM_DIR="$HOME/.nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source "$NVM_DIR/nvm.sh"

nvm install lts
nvm use lts

nvm install --lts
npm i
npm audit fix -f
npm run build && mv build/* /out
