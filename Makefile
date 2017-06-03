DIRS=config mods scripts structures

synceso:
	for dir in $(DIRS); do \
		rsync -avr remote/$$dir/ $$dir; \
	done
