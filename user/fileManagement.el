;;Ivy for better file navigation in dired
(use-package ivy
  :diminish
  :demand
  :bind (("C-s" . swiper)
         :map ivy-minibuffer-map
         ("TAB" . ivy-alt-done)
         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))

;;Neotree
(use-package neotree
  :init
  (setq neo-window-position 'right)
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  :config
  (add-hook 'neotree-mode-hook
	    (lambda ()
	      (define-key neotree-mode-map (kbd "j") 'neotree-next-line)
	      (define-key neotree-mode-map (kbd "k") 'neotree-previous-line)
	      (define-key neotree-mode-map (kbd "r") 'neotree-rename-node)
	      (define-key neotree-mode-map (kbd "+") 'neotree-create-node)
	      (define-key neotree-mode-map (kbd "-") 'neotree-delete-node)
	      ))
  )


(evil-global-set-key 'normal (kbd "<leader>e") 'neotree-toggle)
(evil-global-set-key 'emacs (kbd "<leader>e") 'neotree-toggle)

;; Project
(use-package project)
  
(provide 'fileManagement)

