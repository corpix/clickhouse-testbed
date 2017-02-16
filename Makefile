.DEFAULT_GOAL := all

.PHONY: all
all:

.PHONY: modules
modules:
	git submodule update --init --recursive

.PHONY: client
client:
	sudo docker run --net=host -it yandex/clickhouse-client

.PHONY: server
server:
	sudo docker-compose up $@

.PHONY: web
web: modules
	sudo docker-compose up $@
