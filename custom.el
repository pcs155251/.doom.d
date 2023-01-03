;;; custom.el -*- lexical-binding: t; -*-

;; set line height
(setq-default line-spacing 0.4)

;; make latex preview clear
(setq org-preview-latex-default-process 'dvisvgm)

;; org mode latex preview when start up
(setq org-startup-with-latex-preview 't)

;; display line number in dired mode
(add-hook 'dired-mode-hook 'display-line-numbers-mode)

;; org mode settings
(setq org-hide-emphasis-markers t)

;; automatically show org mode latex preview, work but regenerate preview everytime make it slow
(use-package! org-fragtog
  :hook (org-mode . org-fragtog-mode))

;; (use-package! ef-themes)
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
 '(org-code ((t (:inherit (shadow fixed-pitch)))))
 '(org-document-info ((t (:foreground "dark orange"))))
 '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
 '(org-document-title ((t (:weight normal :foreground "mac:textColor" :font "Helvetica" :height 2.0 :underline nil))))
 '(org-done ((t (:inherit fixed-pitch))))
 '(org-drawer ((t (:inherit fixed-pitch))))
 '(org-indent ((t (:inherit (org-hide fixed-pitch)))))
 '(org-level-1 ((t (:weight normal :foreground "mac:textColor" :font "Helvetica" :height 1.1))))
 '(org-level-2 ((t (:weight normal :foreground "mac:textColor" :font "Helvetica" :height 1.1))))
 '(org-level-3 ((t (:weight normal :foreground "mac:textColor" :font "Helvetica" :height 1.1))))
 '(org-level-4 ((t (:weight normal :foreground "mac:textColor" :font "Helvetica" :height 1.1))))
 '(org-level-5 ((t (:weight normal :foreground "mac:textColor" :font "Helvetica" :height 1.1))))
 '(org-level-6 ((t (:weight normal :foreground "mac:textColor" :font "Helvetica"))))
 '(org-level-7 ((t (:weight normal :foreground "mac:textColor" :font "Helvetica"))))
 '(org-level-8 ((t (:weight normal :foreground "mac:textColor" :font "Helvetica"))))
 '(org-link ((t (:foreground "royal blue" :underline t))))
 '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-property-value ((t (:inherit fixed-pitch))) t)
 '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-table ((t (:inherit fixed-pitch :foreground "#83a598"))))
 '(org-tag ((t (:inherit (shadow variable-pitch) :height 0.9))))
 '(org-todo ((t (:inherit fixed-pitch))))
 '(org-verbatim ((t (:inherit (shadow fixed-pitch)))))
 '(line-number ((t (:inherit (shadow fixed-pitch)))))
)
