set nocompatible	" nocp : 호환성 끄기. Vim 전용 기능 사용
set mouse=a
set history=1000	" hi : 명령어 기록 갯수
set autochdir		" 파일 열면 vim의 작업 디렉토리를 그 파일이 있는 디렉토리로
set lpl				" Plugin loading when start
set paste
set clipboard=unnamed 
set nofoldenable

"=== Default ===
set showmatch				 " ().{} 에서 닫는 괄호를 입력할 때 일치하는 괄호를 보여준다.
set ignorecase				 " Case insensitive matching.
set hlsearch				 " Highlight search matches.
set bs=indent,eol,start  " BS로 라인끝과 처음 자동들여쓰기한 부분을 지날 수 있음
set ru                   " show curor always




"=== Backup ===
"set nobackup
set backupext=.bak
if has("unix")
    set backupdir=~/.vimback
elseif has ("win32")
    set backupdir=C:\Vim\backup
endif



"=== encoding ===
if has("unix")
	set encoding=utf-8
elseif has ("win32")
	set encoding=cp949
endif

set fenc=utf-8
set fencs=ucs-bom,utf-8,euc-kr,cp949,latin1



"=== Indents and Bracket ===
set tabstop=4		" ts
set shiftwidth=4    " sw 
set nocindent	    " for indent used by tab only
set autoindent      " 엔터를 치거나 O, o 로 줄을 삽입 할때 자동으로 indentition 하는 가에 대한 옵션이다.
set smartindent
set noet			" 탭 공백 변환 사용안함
set sts=0			" 탭 공백 변환 사용안함
set nowrap
set showmatch		" 닫는 입력시 매칭되는 여는 괄호에 잠시 커서가 위치했다가 다시 제자리로 돌아 온다.
set cursorline      " 커서 라인



"=== Search ===
set hls				" 검색어 강조
set ignorecase      " 검색할 때 대소문자 무시하도록 하는 것.
set scs				" 스마트한 대소문자 구별 기능 사용
set magic			" magic 기능 사용


"=== Selection ==
set km=startsel,stopsel 	"SHIFT 키로 선택 영역을 만드는 것을 허용
set selection=exclusive		" 현재 커서 캐릭터 선택 제외

if has("gui_macvim")
    let macvim_hig_shift_movement = 1
endif



"=== Display ===
set t_Co=256			" terminal color 256
set nu					" uses line-number 
set laststatus=2		" status 라인이 어떻게 나오게 할 지 지정
set statusline=%<%F%h%m%r%h%w%y\ %{strftime(\"%Y-%m-%d\ %H:%M\")}%=\ [line\ %l:%c\ col]\ %ob\ %L\ %P
"set visualbell       " 키를 잘 못 눌렀을 때 삑 소리 대신 화면이 번쩍이게 변경



"=== Color ===
colorscheme jellybeans


"=== Syntax Highlighting ===
syntax on	
filetype indent plugin on


"=== Plugin Options ==
filetype plugin on  " for c.vim

let Tlist_Use_Right_Window = 1
let g:miniBufExplMapCTabSwitchBufs = 1 



"=== Command ===
"## 영역이 지정된 상태에서 Tab과 Shift-Tab 으로 들여쓰기/내어쓰기
vmap <Tab>  >gv
vmap <S-Tab> <gv



"## Yankring Plugin : 클립보드 기능
nnoremap <silent> <F12> :YRShow<CR>
nnoremap <silent> <F3> :NERDTree<CR>
nnoremap <silent> <F4> :TlistToggle<CR>


"# 버퍼 선택
map ,1 :b!1<CR>
map ,2 :b!2<CR>
map ,3 :b!3<CR>
map ,4 :b!4<CR>
map ,5 :b!5<CR>
map ,6 :b!6<CR>
map ,7 :b!7<CR>
map ,8 :b!8<CR>


" == CSCOPE ==
"if filereadable("./cscope.out")
"	cs add cscope.out
"endif
"
set tags=./tags;/		" 상위로 올라가면서 tags 찾기 
"map <C-[> :vsp <cr>:exe 'tj' expand('<cword>')<CR>
"위 커맨드 vim에서 충돌남

" Include Find Paths
set path=.,,..,../..,./*,./*/*,../*,~/,~/**,/usr/include/*


" Fix Words =====


" 해당 파일에서 폴드 옵션 적용 :za
autocmd Syntax c,cpp,vim,xml,html,xhtml setlocal foldmethod=syntax
autocmd Syntax c,cpp,vim,xml,html,xhtml normal zR
autocmd Syntax python setlocal foldmethod=indent
autocmd Syntax python normal zR


" Coding Convension ==
autocmd Syntax c,cpp set expandtab
autocmd Syntax c,cpp set tabstop=2
"autocmd Syntax c,cpp set shiftwidth=2


"map <F7> :w <CR> :!g++ % -w -lGL -lGLU -lglut -lSDL -lSDL_image -lSDL_ttf -lSDL_mixer -o %< && ./%<<CR>
map <F8> :w <CR> :!python ./% <CR>
"map <F9> :w <CR> :!gcc % -Wall -lm -lGL -GLU -lglut -std=c99 -lSDL -o %< && ./%< <CR>
map <F9> :w <CR> :!gofmt -w ./% <CR> :e <CR> :!go run ./% <CR>
"map <F10> :w <CR> :!clisp ./% <CR>
map <F10> :w <CR> :!/usr/bin/xcrun swift ./% <CR>
map <F5> <Esc>I#<Esc><Esc>
map <F6> ^x<Esc><Esc>
