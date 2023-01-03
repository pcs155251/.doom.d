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
;;
(add-hook 'org-mode-hook 'variable-pitch-mode)
(setq org-hide-emphasis-markers t)

(let* ((variable-tuple
        (cond ((x-list-fonts "Helvetica")       '(:font "Helvetica"))
              ((x-family-fonts "Sans Serif")    '(:family "Sans Serif"))
              (nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
       (base-font-color     (face-foreground 'default nil 'default))
       (headline           `(:inherit default :weight normal :foreground, base-font-color)))

  (custom-theme-set-faces
   'user
   `(org-level-8 ((t (,@headline ,@variable-tuple))))
   `(org-level-7 ((t (,@headline ,@variable-tuple))))
   `(org-level-6 ((t (,@headline ,@variable-tuple))))
   `(org-level-5 ((t (,@headline ,@variable-tuple :height 1.2))))
   `(org-level-4 ((t (,@headline ,@variable-tuple :height 1.2))))
   `(org-level-3 ((t (,@headline ,@variable-tuple :height 1.2))))
   `(org-level-2 ((t (,@headline ,@variable-tuple :height 1.2))))
   `(org-level-1 ((t (,@headline ,@variable-tuple :height 1.2))))
   `(org-document-title ((t (,@headline ,@variable-tuple :height 2.0 :underline nil))))
   `(org-block ((t (:inherit fixed-pitch))))
   `(org-code ((t (:inherit (shadow fixed-pitch)))))
   `(org-document-info ((t (:foreground "dark orange"))))
   `(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
   `(org-indent ((t (:inherit (org-hide fixed-pitch)))))
   `(org-link ((t (:foreground "royal blue" :underline t))))
   `(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
   `(org-property-value ((t (:inherit fixed-pitch))) t)
   `(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
   `(org-table ((t (:inherit fixed-pitch :foreground "#83a598"))))
   `(org-tag ((t (:inherit (shadow variable-pitch) :height 0.9))))
   `(org-verbatim ((t (:inherit (shadow fixed-pitch)))))
   `(org-drawer ((t (:inherit fixed-pitch))))
   `(org-todo ((t (:inherit fixed-pitch))))
   `(org-done ((t (:inherit fixed-pitch))))
   )
)

;; automatically show org mode latex preview, work but regenerate preview everytime make it slow
;; (use-package! org-fragtog
;;   :hook (org-mode . org-fragtog-mode))

;; not work
;; (add-hook 'org-mode-hook
;;       (lambda ()
;;          (add-hook 'after-save-hook 'org-preview-latex nil 'make-it-local)))

;;
;; (use-package! org-elp
;;   :config
;;   (setq org-elp-idle-time 0.5
;;         org-elp-split-fraction 0.25))
;;

;; (use-package! modus-theme)
