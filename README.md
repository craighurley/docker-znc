# docker-znc

Run the ZNC IRC bouncer in a Docker container.

# Usage

To run the ZNC container and expose the port on all interfaces...

```bash
docker run -p 6697:6697 --name znc znc
```

Alternatively, my preference is to run the ZNC container and expose the port 
_only_ on localhost; that way you can only access the ZNC bouncer by SSH'ing 
into the docker host and port forwarding via SSH (SSH tunneling).

```bash
docker run -p 127.0.0.1:6697:6697 --name znc znc
```

# TODO

- Make user provide cert in the shared volume rather than create a new cert on 
every run.
- Consider using `ENTRYPOINT` in the `Dockerfile` so users can create their cert 
easily.
- Provide an example systemd unit file for RHEL/CentOS to start/stop/reload the 
container.
- Complete README.md (add build etc.)
