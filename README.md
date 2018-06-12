# Docker-infinitum

Kicks off an endless series of docker container runs via a `/var/run/docker.sock` volume mapped into children. 

## RUN

```
docker container run --rm -d -v /var/run/docker.sock:/var/run/docker.sock mjeromin/docker-infinitum
```

After running this command, watch your docker process table fill up:
```
watch -n30 'docker ps | grep mjeromin'
```

