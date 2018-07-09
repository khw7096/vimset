
# vim-go를 기본으로 사용.
cd ~
git clone https://github.com/fatih/vim-go.git 
mv ~/vim-go ~/.vim

# 개인셋팅 추가
cp -f vimrc ~/.vimrc

# 젤리빈 컬러를 설정
if [ ! -d ~/.vim/colors ]; then
	mkdir ~/.vim/colors
fi
cp ./colors/jellybeans.vim ~/.vim/colors
cp vimrc ~/.vimrc
