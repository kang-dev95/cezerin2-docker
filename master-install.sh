#!/bin/bash
git clone https://github.com/cezerin/cezerin2
git clone https://github.com/cezerin/cezerin2-admin
git clone https://github.com/cezerin/cezerin2-store

docker-compose run --rm cezerin-api npm install
docker-compose run --rm cezerin-store npm install
docker-compose run --rm cezerin-admin npm install
docker-compose run --rm cezerin-admin npm install pm2