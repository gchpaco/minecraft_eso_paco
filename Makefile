DIRS=config mods scripts structures

difflocal:
	for dir in $(DIRS); do \
		diff -bur instance/$$dir/ $$dir; \
	done

diffeso:
	for dir in $(DIRS); do \
		diff -bur remote/$$dir/ $$dir; \
	done

drylocal:
	for dir in $(DIRS); do \
		rsync -avr --dry-run --delete instance/$$dir/ $$dir; \
	done

dryeso:
	for dir in $(DIRS); do \
		rsync -avr --dry-run --delete remote/$$dir/ $$dir; \
	done

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

.PHONY: eso2git local2git git2eso git2local drylocal dryeso difflocal diffeso
