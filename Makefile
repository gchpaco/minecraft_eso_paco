DIRS=config defaultconfigs mods patchouli_books
RSYNC_FLAGS=-cvrlFF --delete --exclude-from=.gitignore

diff:
	for dir in $(DIRS); do \
		diff -bur instance/$$dir/ $$dir; \
	done

dry:
	for dir in $(DIRS); do \
		rsync $(RSYNC_FLAGS) --dry-run instance/$$dir/ $$dir/; \
	done

instance2git:
	for dir in $(DIRS); do \
		rsync $(RSYNC_FLAGS) instance/$$dir/ $$dir/; \
	done

git2instance:
	for dir in $(DIRS); do \
		rsync $(RSYNC_FLAGS) $$dir/ instance/$$dir/; \
	done

blocksummarize:
	mlr --csv uniq -g "Mod name,BlockID" then stats1 -a count -f "BlockID" -g "Mod name" then sort -n "BlockID_count" < $$(ls -1Ur instance/config/tellme/blocks-csv* | head -1) | tee remote/blockcounts.csv

.PHONY: diff dry instance2git git2instance blocksummarize
