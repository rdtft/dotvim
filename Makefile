all: update link

update:
	git submodule update --init	

link:
	ln -s $(PWD)/vimrc $(HOME)/.vimrc
	ln -s $(PWD)/gvimrc $(HOME)/.gvimrc
