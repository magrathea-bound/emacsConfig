
;;Set visible bell
(setq visible-bell t)

;;Line Numbers
(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)

;; Disable line numbers for some modes
(dolist (mode '(org-mode-hook
                term-mode-hook
                shell-mode-hook
                eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))



(set-fringe-mode 10)        ; Give some breathing room

;;Misc Settings
;;(setq inhibit-startup-message t)
(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
;;(tooltip-mode -1)           ; Disable tooltips
(menu-bar-mode -1)            ; Disable the menu bar


;;Font and theme
(set-face-attribute 'default nil :font "FiraCode Nerd Font" :height 105)		    
;;(load-theme 'tango-dark)


(use-package doom-themes
  :init (load-theme 'doom-gruvbox t))


;;all-the-icons not currently working switching to nerd-fonts in the meantime...
;;(use-package all-the-icons
;;  :if (display-graphic-p))

(use-package nerd-icons)
(setq nerd-icons-font-family '"FiraCode Nerd Font")
(setq nerd-icons-scale-factor 1.3)
;;  :straight (nerd-icons
;;             :type git
;;             :host github
;;             :repo "rainstormstudio/nerd-icons.el"
;;             :files (:defaults "data"))
;;  :custom
  ;; The Nerd Font you want to use in GUI
  ;; "Symbols Nerd Font Mono" is the default and is recommended
  ;; but you can use any other Nerd Font if you want
;;  (nerd-icons-font-family "Fira Code Retina")
;;  )

(use-package doom-modeline
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

;;(use-package doom-themes
;;  :init (load-theme 'doom-dracula t))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))


(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 1))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(doom-modeline-height 25 nil nil "Customized with use-package doom-modeline")
 '(package-selected-packages
   '(neotree ivy evil doom-themes doom-modeline all-the-icons which-key use-package rainbow-delimiters gnu-elpa-keyring-update)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(toggle-frame-maximized)

(provide 'ui)
