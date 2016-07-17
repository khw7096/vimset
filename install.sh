if [ ! -d ~/.vim ]; then
	mkdir ~/.vim
fi
if [ ! -d ~/.vimback ]; then
	mkdir ~/.vimback
fi
cp -rf ~/vimset/vimrc ~/.vimrc
cp -rf ~/vimset/vim/* ~/.vim/
