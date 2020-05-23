### Cezerin 2 with Minio and Image Resize in Docker
Part of https://github.com/Cezerin2/cezerin2 

#### Installation and run on your VPS, VDS or LocalMachine
- Install Docker and docker-compose
- run master-install.sh (pull required version cezerin (api, store, admin) and install deps)
- run `cp .env-example .env`
- configure environment in `.env` file
- run `docker-compose up -d`
- check running in `docker ps`
- go to minio and add collections `images, assets` **with read policy**
- setup the app `docker-compose exec cezerin-api npm run setup admin@example.com http://localhost:3000`

#### Run with File Watcher for Development
`docker-compose -f docker-compose.yml -f docker-compose.dev.yml up`

http://example.com:80 - store

http://example.com:3001 - api

http://example.com:3002 - admin

http://example.com:8887 - image resize service

http://example.com:9001 - minio

In development set `APP_DOMAIN` to `http://localhost`