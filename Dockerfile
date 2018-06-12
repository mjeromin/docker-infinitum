FROM mjeromin/docker-infinitum

LABEL maintainer="mark.jeromin@sysfrog.net"

CMD ["/usr/bin/docker", "container", "run", "--rm", "-v", "/var/run/docker.sock:/var/run/docker.sock", "mjeromin/docker-infinitum"]
