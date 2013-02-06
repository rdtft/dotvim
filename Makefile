all: update link

update:
	git submodule update --init	

link:
	ln -s $(PWD)/vimrc $(HOME)/.vimrc

unlink:
	unlink $(HOME)/.vimrc
