# sentinel-dashboard
docker or docker-compose deployment of sentinel-dashboard 

#### Environments
- USERNAME=admin
- PASSWORD=admin
- PROJECT_NAME=sentinel-dashboard

#### Docker Run
```
docker run --rm \
  -p 8081:8080 
  -e USERNAME=admin \
  -e PASSWORD=admin \
  -e PROJECT_NAME=sentinel-dashboard \
  aosapps/sentinel-dashboard
```

#### docker-compose up
Modify the environments in `docker-compose.yml`, and run:
```
docker-compose up -d
```

#### Visit URL
`localhost:8081` or `ip:port`