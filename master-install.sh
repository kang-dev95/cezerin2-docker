#!/bin/bash
git clone https://github.com/cezerin2/cezerin2
cd cezerin2
git checkout 86c08d3b14fd97f8df56443acaaa055bde53fcc5
cd ..

git clone https://github.com/cezerin2/cezerin2-admin
cd cezerin2-admin
git checkout 82e112acd4be2cd71fffc8d470db555e9473be77
cd ..

git clone https://github.com/cezerin2/cezerin2-store
cd cezerin2-store
git checkout b05a6697832f9fc50b2d3b8a0aa036138f370ff4
cd ..

docker-compose run --rm cezerin-api npm install

docker-compose run --rm cezerin-store npm install
docker-compose run --rm cezerin-store npm install --save-dev pm2

docker-compose run --rm cezerin-admin npm install
docker-compose run --rm cezerin-admin npm install --save-dev pm2