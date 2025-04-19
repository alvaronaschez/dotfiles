;;; init.el --- init file for emacs

;;; Commentary:
;; to reload this config file, run:
;; M-x eval-buffer

;;; Code:

;; gui tweaks
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq scroll-conservatively 101)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)
(global-visual-line-mode t)
(setq scroll-margin 5)

;; Put all auto-generated configurations in a separate file
(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file :no-error-if-file-is-missing)

;; Put backups in same directory
(setq backup-directory-alist '((".*" . "~/.local/share/Trash/files")))

;; minibuffer escape
(global-set-key [escape] 'keyboard-escape-quit)

;;(require 'package-manager "~/.config/emacs/alvaro/package-manager.el")
(require 'package)
(package-initialize)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; Load theme
(load-theme 'deeper-blue)
;;(load-theme 'modus-vivendi-deuteranopia)

;;(require 'evil "~/.config/emacs/alvaro/evil.el")
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
  (add-hook 'evil-insert-state-entry-hook (lambda () (send-string-to-terminal "\033[5 q")))
  (add-hook 'evil-insert-state-exit-hook  (lambda () (send-string-to-terminal "\033[2 q")))
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

;;(require 'keybindings "~/.config/emacs/alvaro/keybindings.el")


;;(require 'whichkey "~/.config/emacs/alvaro/whichkey.el")
(use-package which-key
  :ensure t
  :init
  (which-key-mode))

;; syntax check
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))
(add-hook 'after-init-hook #'global-flycheck-mode)

(use-package vterm
  :ensure t)

(use-package rainbow-delimiters :ensure t)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)


(provide 'init)

;;; init.el ends here
