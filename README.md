## Build
```docker build -t cosmicshuffle .```
## Configure
Update `.env` with your Spotify Client_ID and Client_Secret, and set CS_ENV to whatever callback url you would like the application to use. 

## Run
```docker run -p 8888:8888 --env-file .env --name cosmicshuffle cosmicshuffle```

> This will start the Node.js app in a container and bind the container's 8888 port to the host machine's 8888 port, so you can access the app from your host machine at http://localhost:8888.
