;; vim key bindings
(provide 'evil)
(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
  (setq evil-want-keybinding nil) ;; needed by evil-collection
  (setq evil-want-C-u-scroll t
        evil-undo-system 'undo-redo
	evil-split-window-below t
	evil-vsplit-window-right t)
  :config
  (evil-mode 1))

;; vim key bindings everywhere
(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))
(evil-collection-swap-key nil 'evil-motion-state-map
  ";" ":")


