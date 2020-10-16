# GUIDELINES ON IMPLEMENTING BUILD TARGETS
# =========================================================   
#
# *invalid*
# Avoid changing the logic. It prevents the _makefile_ from
# being invoked without a build target which indicates
# that a user without deeper understanding is experimenting
# with this part of the project.
# You might however want to add a few $(info ...) to direct
# him to a proper README.
# 
# *local*
# Generate files for local profile. You may assume a
# graphical environment. Do not however rely on any packages
# being installed without adding a reference to them in the
# packagelist module.
#
# *remote*
# Generate files for a remote profile. Assume a TTY /
# console based environment and do not rely on any packages
# being installed without adding a reference to them in the
# packagelist module.
# 
# *clean*
# Remove generated symlinks. We will assume that the user
# has not replaced them by custom files.

.PHONY: local remote clean symlinks

invalid:
	$(error "no target provided")

local:
	ln -s $(shell pwd)/vimrc-local ~/.vimrc
	ln -s $(shell pwd)/vim.d-local ~/.vim

remote:
	ln -s $(shell pwd)/vimrc-remote ~/.vimrc
	ln -s $(shell pwd)/vimrc-remote ~/.vim

clean:
	rm -f ~/.vimrc
	rm -f ~/.vim
