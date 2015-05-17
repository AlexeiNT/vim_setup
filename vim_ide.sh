#!/bin/bash
USER_VIMRC_FILE=$(vim --version | grep '^\ \+.*:\ "$HOME[\\,\/].vimrc"' | sed 's/^\s\+.*:\ "\($HOME[\\,\/].vimrc\)"/\1/')
printf "User vim rc file was founded by path:\n%s\n\n" "$USER_VIMRC_FILE"

USER_VIMFILES_DIRECTORY=$(vim --version | grep '^\ \+.\+".\+[\\,\/].\+[\\,\/]vimrc' | sed 's/^\s\+.\+:\ "\(.\+[\\,\/].\+[\\,\/]\)vimrc"/\1/')
USER_PLUGINS_DIRECTORY="${USER_VIMFILES_DIRECTORY}bundle\\"
printf "User vim plugin directory was founded by path:\n%s\n\n" "$USER_PLUGINS_DIRECTORY"

EOF="\r\n"

declare -a COMMON_SETTINGS=(\
'"  ���������� ������ �����'\ 
'set number'\ 
'" �������� ��������� ����������'\ 
'syntax on'\ 
'" ����� � �������� ������'\ 
'set incsearch'\ 
'" ������������� ����������� ������'\ 
'set hlsearch'\ 
'" ����� ����������� �� ��������. ������ ":h smartcase"'\ 
'set ignorecase'\ 
'set smartcase'\ 
'" ��������� ������ �� ��������� utf8'\ 
'set termencoding=utf8'\ 
'" �������� ��������������� �������� � Vi, ��� ��� Vi ��� � �� �����������'\ 
'set nocompatible'\ 
'" ���������� ��������� ������� �� �����.'\ 
'set ruler'\ 
'" ���������� ������������� ������� � ����������'\ 
'set showcmd'\ 
'" ������� �� �������'\ 
'set foldenable'\ 
'set foldlevel=100'\ 
'set foldmethod=indent'\ 
'" ��������� �������� ���������� � ���������� ����� �������, ������������� �������� � �.�.'\ 
'set noerrorbells visualbell t_vb='\ 
'autocmd GUIEnter * set visualbell t_vb='\ 
'" ��������� ����'\ 
'set mouse=a'\ 
'set mousemodel=popup'\ 
'" �� ��������� �����, ����� ������������� �� ������'\ 
'" ��� ��������� ������������� ��������� ������ � ���� � ��� �� ������ ��� ������������� ���������� ������ ���'\ 
'" ����� �������������� ����� ����'\ 
'set hidden'\ 
'" ������ ������ � gui ������'\ 
'set guioptions-=T'\ 
'" ������� ������ ������ ������� � ���� ������'\ 
'set ch=1'\ 
'" �������� ��������� ����, ����� ��������'\ 
'set mousehide'\ 
'" �������� �����������'\ 
'set autoindent'\ 
'" �� ���������� ������'\ 
'set nowrap'\ 
'" �������������� ���� � �������'\ 
'set expandtab'\ 
'" ������ ��������� �� ���������'\ 
'set shiftwidth=4'\ 
'set softtabstop=4'\ 
'set tabstop=4'\ 
'" ������ ������ ���������. �������������� �������� ��������� ":h statusline"'\ 
'set statusline=%&lt;%f%h%m%r\ %b\ %{&amp;encoding}\ 0x\ \ %l,%c%V\ %P'\ 
'set laststatus=2'\ 
'" �������� \"�����\" �������, ��������, ���� ������ ����� "{"'\ 
'set smartindent'\ 
'" ����������� ������ ��������'\ 
'set showmatch'\ 
'" �������� �������� ���� ��������� �� ���������'\ 
'set lines=50'\ 
'set columns=140'\ 
'" ��������� � ������ ������� ��������, ����������� ��������� ���������/���������� ����� � �.�.'\ 
'set iskeyword=@,48-57,_,192-255'\ 
'" �������� �������� ���������� � Windows'\ 
'set backspace=indent,eol,start'\ 
'" ������������ ����� ������, �� ������� ��������� ������'\ 
'set cursorline'\ 
'highlight CursorLine guibg=lightblue ctermbg=lightgray'\ 
'highlight CursorLine term=none cterm=none'\ 
'" ���������� ������� �������'\ 
'set history=200'\ 
'" �������������� ���������� � ������ ���������'\ 
'set wildmenu'\ 
'" ��������� ����������� ����������� ��������'\ 
'set list listchars=tab:>\ ,trail:�'\ 
'" ��������� ��������� ��������'\ 
'filetype plugin on' 
)

function SetupVim {
	printf "%s$EOF%s$EOF%s$EOF%s$EOF"\
		"\"*********************************************************************"\
		"\"*                    <Added by vim_ide.sh>                          *"\
		"\"*********************************************************************"\
		>>$USER_VIMRC_FILE

	for SETTINGS_LINE in ${!COMMON_SETTINGS[*]} 
	do
		printf "%s$EOF" "${COMMON_SETTINGS[$SETTINGS_LINE]}" >> $USER_VIMRC_FILE
	done
	printf "Commong settings was wrote.$EOF"		

	printf 	"%s$EOF%s$EOF%s$EOF"\
		"\"*********************************************************************"\
		"\"*                    </Added by vim_ide.sh>                         *"\
		"\"*********************************************************************"\
		>> $USER_VIMRC_FILE
}



#SetupVim
