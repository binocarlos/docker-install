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


## notes

you can use docker for installing software (containers).

This installs docker so it can do its magic.

## license

MIT