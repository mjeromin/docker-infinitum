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

## STOP

Here is a way to stop all the containers at once:
```
docker ps | grep mjeromin | grep -v grep | awk '{ print $1 }' | xargs -i docker container stop -t0 {}
```


## BUILD
To build a base container to replace mjeromin/docker-infinitum:
```
docker build -t mjeromin/docker-infinitum -f Dockerfile-base .
```
