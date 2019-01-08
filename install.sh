if [ ! -d ~/.vim ]; then
	mkdir ~/.vim
fi

# vim-go를 기본으로 사용.
if [ ! -d ~/.vim/vim-go ]; then
	cd ~/.vim
	git clone https://github.com/fatih/vim-go.git 
	cd -
fi

# 젤리빈 컬러를 설정
if [ ! -d ~/.vim/colors ]; then
	mkdir ~/.vim/colors
fi
cp ./colors/jellybeans.vim ~/.vim/colors

# 개인셋팅 추가
cp -f vimrc ~/.vimrc
