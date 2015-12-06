" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    .vimrc                                             :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: jclerc <jclerc@student.42.fr>              +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2015/12/05 11:04:15 by jclerc            #+#    #+#              "
"    Updated: 2015/12/06 15:01:48 by jclerc           ###   ########.fr        "
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
