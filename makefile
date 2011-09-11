all: pull
	planet config/config.ini

pull:
	git pull
