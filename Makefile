.PHONY: update update-all all

update:
	git pull origin master
	git submodule update --init

update-all: update
	git submodule foreach git pull origin main

all: update-all