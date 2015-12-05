; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    .emacs                                             :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ael-hana <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/12/05 16:04:50 by ael-hana          #+#    #+#              ;
;    Updated: 2015/12/05 19:30:30 by jclerc           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

(setq c-default-style "bsd")
(setq c-basic-offset 4)
(setq c-tab-always-indent t)
(setq default-tab-width 4)
(add-to-list 'load-path "~")
(require 'autopair)
(autopair-global-mode)
