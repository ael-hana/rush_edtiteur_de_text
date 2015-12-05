" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    .vimrc                                             :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: jclerc <jclerc@student.42.fr>              +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2015/12/05 11:04:15 by jclerc            #+#    #+#              "
"    Updated: 2015/12/05 13:50:08 by ael-hana         ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

"Configuration supplementaire pratique a 42
set colorcolumn=80
set nu
syn on
"Configuration demandee pour le rush mexican_standoff
"afficher la colonne de position du curseur
set cursorcolumn
"indentation automatique
set cindent
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
