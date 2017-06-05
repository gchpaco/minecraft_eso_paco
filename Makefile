DIRS=config mods scripts structures

eso2git:
	for dir in $(DIRS); do \
		rsync -avr --delete remote/$$dir/ $$dir; \
	done

local2git:
	for dir in $(DIRS); do \
		rsync -avr --delete instance/$$dir/ $$dir; \
	done

git2eso:
	for dir in $(DIRS); do \
		rsync -avr --delete $$dir/ remote/$$dir; \
	done

git2local:
	for dir in $(DIRS); do \
		rsync -avr --delete $$dir/ instance/$$dir; \
	done

.PHONY: eso2git local2git git2eso git2local
