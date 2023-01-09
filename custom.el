;;; custom.el -*- lexical-binding: t; -*-

(require 'org)

;;new window to maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; switch to new buffer when splitting (vertically and horizontally)
(global-set-key "\C-x2" (lambda () (interactive)(split-window-vertically) (other-window 1)))
(global-set-key "\C-x3" (lambda () (interactive)(split-window-horizontally) (other-window 1)))

(global-visual-line-mode t)

;; set line height
(setq-default line-spacing 0.4)

;; make latex preview clear
(setq org-preview-latex-default-process 'dvisvgm)

;; turn on beacon tried but doesn't take effect
;; (setq beacon-mode 1)

;; display line number in dired mode
(add-hook 'dired-mode-hook 'display-line-numbers-mode)

;; vterm
(add-hook 'vterm-mode-hook 'display-line-numbers-mode)
(add-hook! 'vterm-mode-hook (setq-local line-spacing 0.2))

;; org mode settings
(add-hook 'org-mode-hook 'variable-pitch-mode)
(add-hook 'org-mode-hook 'olivetti-mode)
(setq olivetti-body-width 120)
(add-hook! 'org-mode-hook (setq-local line-spacing 0.8))
;;(add-hook! 'org-mode-hook (setq-local org-hide-leading-stars nil)
;;(setq org-hide-leading-stars nil)
(setq org-indent-indentation-per-level 4)
;;(setq org-superstar-headline-bullets-list '("*") )
(setq org-hide-emphasis-markers t)
;; (setq org-display-inline-images t)
;; (setq org-redisplay-inline-images t)
;; (setq org-startup-with-inline-images "inlineimages")
(setq org-fontify-todo-headline t)
(setq org-fontify-done-headline t)
;; org mode latex preview when start up
(setq org-startup-with-latex-preview 't)
(setq org-format-latex-options (plist-put org-format-latex-options :scale 1.1 ))
(setq org-format-latex-options (plist-put org-format-latex-options :background "Transparent"))
;;(setq org-format-latex-header
;;"\\documentclass[leqno]{article}
;;\\usepackage[usenames]{color}
;;[DEFAULT-PACKAGES]
;;[PACKAGES]
;;\\pagestyle{empty}             % do not remove
;;% The settings below are copied from fullpage.sty
;;\\setlength{\\textwidth}{\\paperwidth}
;;\\addtolength{\\textwidth}{-3cm}
;;\\setlength{\\oddsidemargin}{1.5cm}
;;\\addtolength{\\oddsidemargin}{-2.54cm}
;;\\setlength{\\evensidemargin}{\\oddsidemargin}
;;\\setlength{\\textheight}{\\paperheight}
;;\\addtolength{\\textheight}{-\\headheight}
;;\\addtolength{\\textheight}{-\\headsep}
;;\\addtolength{\\textheight}{-\\footskip}
;;\\addtolength{\\textheight}{-3cm}
;;\\setlength{\\topmargin}{1.5cm}
;;\\addtolength{\\topmargin}{-2.54cm}"
;;)
;; Original value was
;; "\\documentclass{article}
;; \\usepackage[usenames]{color}
;; [DEFAULT-PACKAGES]
;; [PACKAGES]
;; \\pagestyle{empty}             % do not remove
;; % The settings below are copied from fullpage.sty
;; \\setlength{\\textwidth}{\\paperwidth}
;; \\addtolength{\\textwidth}{-3cm}
;; \\setlength{\\oddsidemargin}{1.5cm}
;; \\addtolength{\\oddsidemargin}{-2.54cm}
;; \\setlength{\\evensidemargin}{\\oddsidemargin}
;; \\setlength{\\textheight}{\\paperheight}
;; \\addtolength{\\textheight}{-\\headheight}
;; \\addtolength{\\textheight}{-\\headsep}
;; \\addtolength{\\textheight}{-\\footskip}
;; \\addtolength{\\textheight}{-3cm}
;; \\setlength{\\topmargin}{1.5cm}
;; \\addtolength{\\topmargin}{-2.54cm}"

;; automatically show org mode latex preview, work but regenerate preview everytime make it slow
;;(use-package! org-fragtog
;;  :hook (org-mode . org-fragtog-mode))

(use-package! ef-themes)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("d23a27f5abaeb518ddf1b241d1af95d1790702ad0a27b345b580abaa3dc588a2" "1f77417305730758d30a9faea8872c64fe680ad708af507989e8d1a35f4125f3" "ae7ffd67c75705c76dcfd66fa212abdcdd62ab5be2635371b31dc4de13f40668" "1dbbf33c64f2fa781b0f68494c0edee535d3a9f0c7e106b047d21c719c779a30" "25c9807d70ac15057821f8b830ac93a80ca2b2beca6f1e9e7f77cbc5578e21b4" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(line-number ((t (:inherit (shadow fixed-pitch)))))
 '(org-block ((t (:inherit fixed-pitch))))
 '(org-block-begin-line ((t (:inherit fixed-pitch))))
 '(org-code ((t (:inherit (shadow fixed-pitch) :height 1.1))))
 '(org-document-info ((t (:foreground "dark orange"))))
 '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
 '(org-document-title ((t (:weight normal :foreground "mac:textColor" :font "NewComputerModern" :height 2.0 :underline nil))))
 '(org-done ((t (:inherit variable-pitch :height 1.0))))
 '(org-drawer ((t (:inherit (shadow fixed-pitch)))))
 '(org-headline-done ((t (:height 1.0 :strike-through t))))
 '(org-headline-todo ((t (:height 1.0))))
 '(org-indent ((t (:inherit (org-hide fixed-pitch)))))
 '(org-level-1 ((t (:inherit (variable-pitch) :font "NewComputerModern" :height 1.40 :foreground "#9ac2ff"))))
 '(org-level-2 ((t (:inherit (variable-pitch) :font "NewComputerModern" :height 1.35))))
 '(org-level-3 ((t (:inherit (variable-pitch) :font "NewComputerModern" :height 1.30 :foreground "#9ac2ff"))))
 '(org-level-4 ((t (:inherit (variable-pitch) :font "NewComputerModern" :height 1.25 :foreground "#9ac2ff"))))
 '(org-level-5 ((t (:inherit (variable-pitch) :font "NewComputerModern" :height 1.20 :foreground "#9ac2ff"))))
 '(org-level-6 ((t (:inherit (variable-pitch)))))
 '(org-level-7 ((t (:inherit (variable-pitch)))))
 '(org-level-8 ((t (:inherit (variable-pitch)))))
 '(org-link ((t (:foreground "royal blue" :underline t))))
 '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-property-value ((t (:inherit fixed-pitch))) t)
 '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-table ((t (:inherit fixed-pitch :foreground "#83a598"))))
 '(org-tag ((t (:inherit (shadow variable-pitch) :foreground "#66cdaa" :slant italic))))
 '(org-todo ((t (:inherit variable-pitch :height 1.0))))
 '(org-verbatim ((t (:inherit (shadow fixed-pitch) :height 1.1))))
)

;; (setq org-startup-folded 'show2levels)
(setq org-startup-folded 'showall)
(setq org-startup-indented t)

;; settings for indentation
(after! org
  (setq org-hide-leading-stars nil
        org-indent-mode-turns-on-hiding-stars nil
        org-adapt-indentation 0
  )
)


(add-hook! 'org-mode-hook (set-org-margins))
