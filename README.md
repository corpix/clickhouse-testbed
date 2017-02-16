# Clickhouse testbed

This repository is a testbed for [Yandex.Clickhouse](https://clickhouse.yandex/) DBMS.

It includes:

* Clickhouse server
* Clickhouse console client
* Clickhouse [smi2 frontend](https://github.com/smi2/clickhouse-frontend)

## Requirements

You will require this commands in your system:

* make
* docker
* docker-compose
* git

## Starting services

> All containers use `host` networking mode.
> This is because we may want to run some benchmarks and don't want docker proxy and other
> magic to distort the results.

First of all you will need a clickhouse server, to start it type:

``` shell
make server
```

It should be ready now.

Now we will start the frontend. It the other console window type:

``` shell
make web
```

It will run nginx which will serve frontend static files on `*:8000`.

Now you could login with the following credentials:

> Leave login and password empty.

``` text
Name: default
Host: <ip|hostname of the frontend in your address bar>:8123
Login:
Password:
```

At this point you should see and interface similar to this:

![Screenshot from smi2 repository](https://raw.githubusercontent.com/smi2/clickhouse-frontend/master/media/screen4.jpg)

To start console client just type:

> Use Ctrl-D to exit.

``` shell
make client
```
