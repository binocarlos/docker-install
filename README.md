docker-install
==============

a script to install docker

## install

```bash
$ wget -qO- https://raw.github.com/binocarlos/docker-install/master/bootstrap.sh | sudo bash
```

or

```bash
$ git clone https://github.com/binocarlos/docker-install.git
$ cd docker-install
$ sudo make install
```

then you can:

```bash
$ docker --version
```

## vagrant

if you are using vagrant - run this command to allow the vagrant user access to the docker socket:

```
$ sudo usermod -aG docker vagrant
```

## HTTP interface

to get docker to listen on the HTTP interface as well as unix:///var/run/docker.sock

```bash
$ sudo ./configure.sh 192.168.8.120 2375
```

## license

MIT