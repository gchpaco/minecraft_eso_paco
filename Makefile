DIRS=config defaultconfigs mods patchouli_books
RSYNC_FLAGS=-cvrlFF --delete --exclude-from=.gitignore

diff:
	for dir in $(DIRS); do \
		diff -bur multimc/$$dir/ $$dir; \
	done

dry:
	for dir in $(DIRS); do \
		rsync $(RSYNC_FLAGS) --dry-run multimc/$$dir/ $$dir/; \
	done

multimc2git:
	for dir in $(DIRS); do \
		rsync $(RSYNC_FLAGS) multimc/$$dir/ $$dir/; \
	done

git2multimc:
	for dir in $(DIRS); do \
		rsync $(RSYNC_FLAGS) $$dir/ multimc/$$dir/; \
	done

blocksummarize:
	mlr --csv uniq -g "Mod name,BlockID" then stats1 -a count -f "BlockID" -g "Mod name" then sort -n "BlockID_count" < $$(ls -1Ur instance/config/tellme/blocks-csv* | head -1) | tee remote/blockcounts.csv

.PHONY: diff dry multimc2git git2multimc blocksummarize
