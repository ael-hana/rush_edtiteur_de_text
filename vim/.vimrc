" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    .vimrc                                             :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: jclerc <jclerc@student.42.fr>              +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2015/12/05 11:04:15 by jclerc            #+#    #+#              "
"    Updated: 2015/12/06 23:21:21 by jclerc           ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

"Configuration de Zaz
"Real-world encoding
set encoding=utf-8
"More useful backspace behavior
set backspace=indent,eol,start
"Disable vi-compatibility
set nocompatible
"Interpret modelines in files, check at 1 line
set modelines=1


"Configuration supplementaire pratique a 42
set colorcolumn=80
set nu
syntax on


"Configuration demandee pour le rush mexican_standoff
"afficher la colonne de position du curseur
set cursorcolumn
"indentation automatique
set cindent
"tab de 4 colonne
set tabstop=4
set shiftwidth=4
set noexpandtab
"afficher position du curseur
set ruler
"maper '(' et '{' pour les fermer automatiquement dans differentes situations
inoremap {     {<CR>}<Esc>O
inoremap {<CR> {<CR>}<Esc>O
inoremap {{    {
inoremap {}    {}
inoremap (     ()<Left>
inoremap (<Space> ()<Left>
inoremap ()    ()
"Highlight double espace et espace en fin de ligne
highlight Rs ctermbg=red guibg=red
match Rs /  \| \+$/
"activation backup file et copie des fichiers ~ dans ~/.vim
set backup
set backupdir=~/.vim

"Configuration Header
:function Ft_header()
	"line 0
	:let chara = printf("/* %s */", repeat('*', 74))
	:call append(0, chara)
	"line 1
	:let chara = printf("/* %s */", repeat(' ', 74))
	:call append(1, chara)
	"line 2
	:let chara = printf("/* %s :::      ::::::::   */", repeat(' ', 54))
	:call append(2, chara)
	"line 3
	:let filename = expand("%")
	:let filename = printf("/*   %s", filename)
	:let i = 80 - (strlen(filename) + 25)
	:let espace = repeat(' ', i)
	:let filename = printf("%s %s:+:      :+:    :+:   */", filename, espace)
	:call append(3, filename)
	"line 4
	:let chara = printf("/* %s+:+ +:+         +:+     */", repeat(' ', 51))
	:call append(4, chara)
	"line 5
	:let name = $LOGNAME
	:let mail = $MAIL
	:let i = 80 - strlen(name) - strlen(mail) - 40
	:let flin = "+#+  +:+       +#+        */"
	:let chara = printf("/*   By: %s <%s>%s%s", name, mail, repeat(' ', i), flin)
	:call append(5, chara)
	"line 6
	:let chara = printf("/*%s+#+#+#+#+#+   +#+           */", repeat(' ', 48))
	:call append(6, chara)
	"line 7
	:let name = $LOGNAME
	:let i = 80 - strlen(name) - 62
	:let chara = printf("/*   Created: %s by %s%s#+#    #+#             */",strftime("%Y/%m/%d %X"), name, repeat('', i))
	:call append(7, chara)
	"line 8
	:let name = $LOGNAME
	:let i = 80 - strlen(name) - 63
	:let chara = printf("/*   Updated: %s by %s%s###   ########.fr       */",strftime("%Y/%m/%d %X"), name, repeat(' ', i))
	:call append(8, chara)
	"line 9
	:let chara = printf("/* %s */", repeat(' ', 74))
	:call append(9, chara)
	"line 10
	:let chara = printf("/* %s */", repeat('*', 74))
	:call append(10, chara)
:endfunction

:function Ft_check_header()
	:let line1 = getline(1)
	:let chara1 = printf("/* %s */", repeat('*', 74))
	:let line10 = getline(11)
	:let chara10 = printf("10 /* %s */", repeat('*', 74))
	:if line1 != chara1 && line10 != chara10
	:call Ft_header()
	:endif
:endfunction


map <C-C><C-H> :call Ft_check_header()<CR>
