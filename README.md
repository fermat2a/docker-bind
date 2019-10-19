# docker-bind

A bind9 DNS server with your custom zones.

Additional informations:

- just place your bind9 configuration in a volume and mount it to /etc/bind

https://cloud.docker.com/repository/docker/fermat42/docker-bind contains the latest version of the docker image described im branch master of this repository.

## installation

Check out this repo and build (currently no docker hub image available) or pull the latest version from github:

        docker pull fermat42/docker-bind

## build

### local

        docker build -t bocker-bind:test .

### Using docker hub

        docker build -t fermat42/docker-bind .

## docker-compose template

	bind:
	  image: fermat42/docker-bind
	  volumes:
	    - ./bind:/etc/bind
	  ports:
	    - "53:53/udp"

## docker run example

        docker run -d --restart always -p 192.168.0.10:53:53/udp --name bind -v /home/fermat/repositories/bind:/etc/bind -v /daten/rfs_ssd/bind-log/:/var/log/named/ fermat42/docker-bind

The directory `/home/fermat/repositories/bind` contains the configuration files for bind. You can find my configuration at  https://github.com/fermat2a/bind (as an example).

The directory `/daten/rfs_ssd/bind-log` will contain the log output of bind (in my configuration). You just need an epty directory where bind can write to.
