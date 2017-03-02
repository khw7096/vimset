if [ ! -d ~/.vim ]; then
	mkdir ~/.vim
fi
cp -rf vimrc ~/.vimrc
cd ~
git clone https://github.com/fatih/vim-go.git 
mv ~/vim-go ~/.vim

#add jellybeans color
#https://github.com/nanotech/jellybeans.vim.git 
mkdir ~/.vim/colors
cp colors/jellybeans.vim ~/.vim/colors

