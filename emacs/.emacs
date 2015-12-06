; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    .emacs                                             :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ael-hana <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/12/05 16:04:50 by ael-hana          #+#    #+#              ;
;    Updated: 2015/12/06 13:58:35 by jclerc           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;Set default emacs configuration
(set-language-environment "UTF-8")
;configuration indentation	
(setq c-default-style "bsd")
(setq c-basic-offset 4)
(setq c-tab-always-indent t)
(setq default-tab-width 4)
;declaration plugin autopair
(add-to-list 'load-path "~")
(require 'autopair)
(autopair-global-mode)
;afficher numero colonne et ligne du curseur
(line-number-mode t)
(column-number-mode t)
;highlight double espace et espace en fin de ligne
(add-hook 'c-mode-common-hook (lambda ()
	(highlight-regexp "\s\s")))
(add-hook 'c-mode-common-hook (lambda ()
	(highlight-regexp "\s\n")))
;copie du fichier ~ dans ~/.emacs.d/
(setq backup-directory-alist
	'(("." . "~/.emacs.d")))
