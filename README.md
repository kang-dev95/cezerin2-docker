### Cezerin 2 with Minio and Image Resize in Docker
Part of https://github.com/Cezerin2/cezerin2 

#### Installation and run on your VPS, VDS or LocalMachine (Ubuntu example)
- Install Docker `curl -fsSL https://get.docker.com -o get-docker.sh` and `sudo sh get-docker.sh`
- Instal Docker Compose `sudo apt-get install docker-compose`
- run `cp .env-example .env`
- configure environment in `.env` file
- NEED FIX: you also need configure `cezerin2-store/config/store.js`
- run master-install.sh (pull required version cezerin (api, store, admin) and install deps)
- run `docker-compose up -d`
- check running in `docker ps`
- go to minio (http://your-server:9001) and add collections `images, assets` **with read policy**
- setup the app `docker-compose exec cezerin-api npm run setup admin@example.com http://localhost:3000`

#### Run with File Watcher for Development
`docker-compose -f docker-compose.yml -f docker-compose.dev.yml up`

http://example.com:80 - store

http://example.com:3001 - api

http://example.com:3002 - admin

http://example.com:8887 - image resize service

http://example.com:9001 - minio

In development set `APP_DOMAIN` to `http://localhost`