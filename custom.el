;;; custom.el -*- lexical-binding: t; -*-

;; set line height
(setq-default line-spacing 0.4)

;; make latex preview clear
(setq org-latex-create-formula-image-program 'dvisvgm)

;; display line number in dired mode
(add-hook 'dired-mode-hook 'display-line-numbers-mode)
