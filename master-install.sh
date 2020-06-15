#!/bin/bash
export $(grep -v '^#' .env | xargs)

git clone https://github.com/capfsb/cezerin2
cd cezerin2
git checkout 806142325a8d49fc333d8e9d2fb3a699dbf53a44
cd ..

git clone https://github.com/cezerin2/cezerin2-admin
cd cezerin2-admin
git checkout 82e112acd4be2cd71fffc8d470db555e9473be77
cd ..

git clone https://github.com/capfsb/cezerin2-store
cd cezerin2-store
git checkout 1fda0948278cd4abf9a66c47c0f412b64e1a2af3
cd ..

docker-compose run --rm cezerin-api npm install

docker-compose run --rm cezerin-store npm install
docker-compose run --rm cezerin-store npm install --save-dev pm2

docker-compose run --rm cezerin-admin npm install
docker-compose run --rm cezerin-admin npm install --save-dev pm2