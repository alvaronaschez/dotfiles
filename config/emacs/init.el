;;; init.el --- init file for emacs

;;; Commentary:
;; 

;;; Code:

;; gui tweaks
(setq scroll-conservatively 101)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)
(global-visual-line-mode t)

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
;;(load-theme 'deeper-blue)
(use-package base16-theme
  :ensure t
  :config
  (load-theme 'base16-seti t))


(require 'evil "~/.config/emacs/alvaro/evil.el")

(require 'keybindings "~/.config/emacs/alvaro/keybindings.el")


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
