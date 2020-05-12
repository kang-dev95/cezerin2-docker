### Cezerin 2 with Minio in Docker without nginx
#### Instalation and run
- run master-install.sh (pull latest master of cezerin and install deps)
- run `docker-compose up -d`
- check running in `docker ps`
- go to minio and add collections `images, assets` with read policy
- setup the app `docker-compose exec cezerin-api npm run setup admin@example.com http://localhost:3000`

http://localhost:3000 - store

http://localhost:3001 - api

http://localhost:3002 - admin

http://localhost:9001 - minio
