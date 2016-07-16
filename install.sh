if [ ! -d ~/.vim ]; then
	mkdir ~/.vim
fi
if [ ! -d ~/.vimback ]; then
	mkdir ~/.vimback
fi
cp -rf vimrc ~/.vimrc
cp -rf ./vim/* ~/.vim/
