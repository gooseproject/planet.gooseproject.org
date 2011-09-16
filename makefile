all: start pull
	@echo planet >> logs/planet.log
	@planet config/config.ini >> logs/planet.log 2>&1 && echo "done" >> logs/planet.log || echo "failed" >> logs/planet.log

pull:
	@echo git pull >> logs/planet.log
	@git pull >> logs/planet.log 2>&1

start:
	@echo refreshing planet run on $(shell date) >> logs/planet.log
