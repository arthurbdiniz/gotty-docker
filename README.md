# GoTTY-docker - Share your terminal as a web application

GoTTY - Share your terminal as a web application

This repository is a simple `gotty` docker image based on Debian Buster.

### Usage

Get a shell:

```bash
export GOTTY_CREDENTIAL=user:password
docker run -ti --rm --env GOTTY_CREDENTIAL -w /root -p 8080:8080 arthurbdiniz/gotty
```

No user and password
```bash
docker run -ti --rm -w /root -v /var/run/docker.sock:/var/run/docker.sock -p 8080:8080 arthurbdiniz/gotty
```

Output top for the host:

```bash
docker run -i --rm --pid=host --user nobody -v /var/run/docker.sock:/var/run/docker.sock -p 8080:8080 arthurbdiniz/gotty top
```