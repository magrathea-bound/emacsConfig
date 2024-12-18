
(use-package company
  :init
  (add-hook 'after-init-hook 'global-company-mode))

;; lsp Set Up
(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  ;;:config (
         ;;(python-mode . jedi-lsp)
         ;; which-key integration
        ;; (lsp-enable-which-key-integration t))
  :commands (lsp lsp-deferred))


(use-package python-mode
  :hook (python-mode . lsp-deferred)
  :custom
  (python-shell-interpreter "py"))

;; ivy
;;(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
;;(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

;; optionally if you want to use debugger
;;(use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

;; optionally
;;(use-package lsp-ui :commands lsp-ui-mode)

(provide 'languages)
