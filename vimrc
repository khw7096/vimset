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
set vb

"=== encoding ===
if has("unix")
	set encoding=utf-8
elseif has ("win32")
	set encoding=cp949
endif
set fenc=utf-8
set fencs=ucs-bom,utf-8,euc-kr,cp949,latin1

"=== Indents and Bracket ===
set tabstop=4		" Tab 너비
set shiftwidth=4    " 자동인덴트할 때 너비
set nocindent	    " for indent used by tab only
set autoindent      " 엔터를 치거나 O, o 로 줄을 삽입 할때 자동으로 indentition 하는 가에 대한 옵션이다.
set smartindent
set noet			" 탭 공백 변환 사용안함
set sts=0			" 탭 공백 변환 사용안함
set nowrap
set cursorline      " 커서 라인

"=== Search ===
set hls				" 검색어 강조
set ignorecase      " 검색할 때 대소문자 무시하도록 하는 것.
set scs				" 스마트한 대소문자 구별 기능 사용

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


"=== Command ===
"## 영역이 지정된 상태에서 Tab과 Shift-Tab 으로 들여쓰기/내어쓰기
vmap <Tab>  >gv
vmap <S-Tab> <gv


syntax on
colorscheme jellybeans

"Python, Golang 실행
map <F8> :w <CR> :!python ./% <CR>
map <F9> :w <CR> :!go run ./% <CR>
