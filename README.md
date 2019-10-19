# docker-bind

A bind9 DNS server with your custom zones.

Additional informations:

- just place your bind9 configuration in a volume and mount it to /etc/bind

## installation

	docker pull fermat42/docker-bind

## build

	docker build -t fermat42/docker-bind .

Each pull request will be builded automatically by docker hub.

## docker-compose template

	bind:
	  image: fermat42/docker-bind
	  volumes:
	    - ./bind:/etc/bind
	  ports:
	    - "53:53/udp"

# Example configuration

You can find my home bind configuration at https://github.com/fermat2a/bind

# wanna help?

Fork, improve and PR. ;-)

