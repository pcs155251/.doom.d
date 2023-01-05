;;; custom.el -*- lexical-binding: t; -*-

(require 'org)

;; new window to maximized
;; (add-to-list 'default-frame-alist '(fullscreen . maximized))

;; switch to new buffer when splitting (vertically and horizontally)
(global-set-key "\C-x2" (lambda () (interactive)(split-window-vertically) (other-window 1)))
(global-set-key "\C-x3" (lambda () (interactive)(split-window-horizontally) (other-window 1)))

;; set line height
(setq-default line-spacing 0.4)
(global-visual-line-mode t)

;; make latex preview clear
(setq org-preview-latex-default-process 'dvisvgm)

;; turn on beacon tried but doesn't take effect
;; (setq beacon-mode 1)

;; display line number in dired mode
(add-hook 'dired-mode-hook 'display-line-numbers-mode)

;; org mode settings
(add-hook 'org-mode-hook 'variable-pitch-mode)
(add-hook! 'org-mode-hook (setq-local line-spacing 0.8))
(setq org-indent-indentation-per-level 4)
(setq org-hide-emphasis-markers t)
;; (setq org-display-inline-images t)
;; (setq org-redisplay-inline-images t)
;; (setq org-startup-with-inline-images "inlineimages")
(setq org-fontify-todo-headline t)
(setq org-fontify-done-headline t)
;; org mode latex preview when start up
(setq org-startup-with-latex-preview 't)
(setq org-format-latex-options (plist-put org-format-latex-options :scale 1.2))
(setq org-format-latex-header
"\\documentclass[leqno]{article}
\\usepackage[usenames]{color}
[DEFAULT-PACKAGES]
[PACKAGES]
\\pagestyle{empty}             % do not remove
% The settings below are copied from fullpage.sty
\\setlength{\\textwidth}{\\paperwidth}
\\addtolength{\\textwidth}{-3cm}
\\setlength{\\oddsidemargin}{1.5cm}
\\addtolength{\\oddsidemargin}{-2.54cm}
\\setlength{\\evensidemargin}{\\oddsidemargin}
\\setlength{\\textheight}{\\paperheight}
\\addtolength{\\textheight}{-\\headheight}
\\addtolength{\\textheight}{-\\headsep}
\\addtolength{\\textheight}{-\\footskip}
\\addtolength{\\textheight}{-3cm}
\\setlength{\\topmargin}{1.5cm}
\\addtolength{\\topmargin}{-2.54cm}"
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
)


;; wired, none of below working
;; (setq org-startup-folded 'contents)
;; (setq org-startup-folded "fold")


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
   '("1f77417305730758d30a9faea8872c64fe680ad708af507989e8d1a35f4125f3" "ae7ffd67c75705c76dcfd66fa212abdcdd62ab5be2635371b31dc4de13f40668" "1dbbf33c64f2fa781b0f68494c0edee535d3a9f0c7e106b047d21c719c779a30" "25c9807d70ac15057821f8b830ac93a80ca2b2beca6f1e9e7f77cbc5578e21b4" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-block ((t (:inherit fixed-pitch))))
 '(org-code ((t (:inherit (shadow fixed-pitch) :height 1.1))))
 '(org-verbatim ((t (:inherit (shadow fixed-pitch) :height 1.1))))
 '(org-document-info ((t (:foreground "dark orange"))))
 '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
 '(org-document-title ((t (:weight normal :foreground "mac:textColor" :font "Times New Roman" :height 2.0 :underline nil))))
 ;; '(org-done ((t (:inherit fixed-pitch))))
 '(org-drawer ((t (:inherit fixed-pitch))))
 '(org-indent ((t (:inherit (org-hide fixed-pitch)))))
 ;; '(org-level-1 ((t (:weight normal :foreground "mac:textColor" :font "Helvetica" :height 1.1))))
 ;; '(org-level-1 ((t (:inherit (variable-pitch) :height 1.1))))
 ;; '(org-level-2 ((t (:inherit (variable-pitch) :height 1.1))))
 ;; '(org-level-3 ((t (:inherit (variable-pitch) :height 1.1))))
 ;; '(org-level-4 ((t (:inherit (variable-pitch) :height 1.1))))
 ;; '(org-level-5 ((t (:inherit (variable-pitch) :height 1.1))))
 ;; '(org-level-6 ((t (:inherit (variable-pitch)))))
 ;; '(org-level-7 ((t (:inherit (variable-pitch)))))
 ;; '(org-level-8 ((t (:inherit (variable-pitch)))))
 ;; '(org-level-1 ((t (:weight normal :foreground "mac:textColor" :font "Helvetica" :height 1.1))))
 ;; '(org-level-2 ((t (:weight normal :foreground "mac:textColor" :font "Helvetica" :height 1.1))))
 ;; '(org-level-3 ((t (:weight normal :foreground "mac:textColor" :font "Helvetica" :height 1.1))))
 ;; '(org-level-4 ((t (:weight normal :foreground "mac:textColor" :font "Helvetica" :height 1.1))))
 ;; '(org-level-5 ((t (:weight normal :foreground "mac:textColor" :font "Helvetica" :height 1.1))))
 ;; '(org-level-6 ((t (:weight normal :foreground "mac:textColor" :font "Helvetica"))))
 ;; '(org-level-7 ((t (:weight normal :foreground "mac:textColor" :font "Helvetica"))))
 ;; '(org-level-8 ((t (:weight normal :foreground "mac:textColor" :font "Helvetica"))))
 '(org-link ((t (:foreground "royal blue" :underline t))))
 '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-property-value ((t (:inherit fixed-pitch))) t)
 '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-table ((t (:inherit fixed-pitch :foreground "#83a598"))))
 '(org-tag ((t (:inherit (shadow variable-pitch)))))
 ;; '(org-todo ((t (:inherit fixed-pitch))))
 ;; so that the line-number column remain constat width
 '(line-number ((t (:inherit (shadow fixed-pitch)))))
)

(defun my-org-faces ()
    (set-face-attribute 'org-todo nil :inherit 'variable-pitch :height 1.0)
    (set-face-attribute 'org-done nil :inherit 'variable-pitch :height 1.0)
;;    (set-face-attribute 'org-headline-todo nil :inherit 'variable-pitch :height 1.0)
;;    (set-face-attribute 'org-headline-done nil :inherit 'variable-pitch :height 1.0)
    (set-face-attribute 'org-headline-todo nil :height 1.0)
    (set-face-attribute 'org-headline-done nil :height 1.0 :strike-through t)
    (set-face-attribute 'org-level-1 nil :inherit 'variable-pitch :font "Times New Roman" :height 1.5)
    (set-face-attribute 'org-level-2 nil :inherit 'variable-pitch)
    (set-face-attribute 'org-level-3 nil :inherit 'variable-pitch)
    (set-face-attribute 'org-level-4 nil :inherit 'variable-pitch)
    (set-face-attribute 'org-level-5 nil :inherit 'variable-pitch)
    (set-face-attribute 'org-level-6 nil :inherit 'variable-pitch)
    (set-face-attribute 'org-level-7 nil :inherit 'variable-pitch)
    (set-face-attribute 'org-level-8 nil :inherit 'variable-pitch)
)
(add-hook 'org-mode-hook #'my-org-faces)

(setq org-startup-folded t)
