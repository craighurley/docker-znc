# docker-znc

Run the ZNC IRC bouncer in a Docker container.

## Usage

To run the ZNC container and expose the port on all interfaces...

```sh
docker run -d -p 6697:6697 --name znc craighurley/docker-znc
```

Alternatively, my preference is to run the ZNC container and expose the port 
_only_ on localhost; that way you can only access the ZNC bouncer by SSH'ing 
into the docker host and port forwarding via SSH (SSH tunneling).

```sh
docker run -d -p 127.0.0.1:6697:6697 --name znc craighurley/docker-znc
```

## Links

* <http://wiki.znc.in/ZNC>
* <https://docs.docker.com>
* <https://alpinelinux.org>
