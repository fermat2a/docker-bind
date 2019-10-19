# docker-bind

A bind9 DNS server with your custom zones.

Additional informations:

- just place your bind9 configuration in a volume and mount it to /etc/bind

Currently the docker image is not tested, my ubuntu machine did not allow me to get the port 53 free (libvirt dnsmasq was in the way and I could not get it out)...

## installation

Check out this repo and build (currently no docker hub image available).

## build

        docker build -t bocker-bind:test .

## docker-compose template

	bind:
	  image: fermat42/docker-bind
	  volumes:
	    - ./bind:/etc/bind
	  ports:
	    - "53:53/udp"

## docker run example

        docker run -d --restart always -p 53:53/udp --name bind -t -v /home/fermat/repositories/bind:/etc/bind docker-bind:test

# Example configuration

You can find my home bind configuration at https://github.com/fermat2a/bind

# wanna help?

Fork, improve and PR. ;-)

