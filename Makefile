DIRS=config mods scripts structures resources
RSYNC_FLAGS=-cvrl --delete --exclude-from=.gitignore

difflocal:
	for dir in $(DIRS); do \
		diff -bur instance/$$dir/ $$dir; \
	done

diffcurse:
	for dir in $(DIRS); do \
		diff -bur instance/$$dir/ curse/$$dir/; \
	done

diffeso:
	for dir in $(DIRS); do \
		diff -bur remote/$$dir/ $$dir; \
	done

drylocal:
	for dir in $(DIRS); do \
		rsync $(RSYNC_FLAGS) --dry-run instance/$$dir/ $$dir; \
	done

dryeso:
	for dir in $(DIRS); do \
		rsync $(RSYNC_FLAGS) --dry-run remote/$$dir/ $$dir; \
	done

curse2local:
	for dir in mods; do \
		rsync $(RSYNC_FLAGS) curse/$$dir/ instance/$$dir/; \
	done

local2curse:
	for dir in mods; do \
		rsync $(RSYNC_FLAGS) instance/$$dir/ curse/$$dir/; \
	done

eso2git:
	for dir in $(DIRS); do \
		rsync $(RSYNC_FLAGS) remote/$$dir/ $$dir; \
	done

local2git:
	for dir in $(DIRS); do \
		rsync $(RSYNC_FLAGS) instance/$$dir/ $$dir; \
	done

git2eso:
	for dir in $(DIRS); do \
		rsync $(RSYNC_FLAGS) $$dir/ remote/$$dir; \
	done

git2local:
	for dir in $(DIRS); do \
		rsync $(RSYNC_FLAGS) $$dir/ instance/$$dir; \
	done

.PHONY: eso2git local2git git2eso git2local drylocal dryeso difflocal diffeso curse2local
