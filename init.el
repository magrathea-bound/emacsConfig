;;;; Initialization

;; Add user config to load path
(add-to-list 'load-path '"~/.emacs.d/user")

;;;; package and use-package

(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
 (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;;Evil and other keybindings
(require 'keybindings)
;; UI options: Fonts, Themes, doom-modeline, UI feature removal
(require 'ui)
;;File Navigation: ivy, neotree, etc.
(require 'fileManagement)

;;Language Help: LSP, Autocomplete
(require 'languages)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(doom-modeline-height 25 nil nil "Customized with use-package doom-modeline")
 '(package-selected-packages
   '(company python-mode lsp-mode neotree ivy evil doom-themes doom-modeline all-the-icons which-key use-package rainbow-delimiters gnu-elpa-keyring-update)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
