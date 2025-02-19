;;; init.el --- init file for emacs

;;; Commentary:
;; 

;;; Code:

;; gui tweaks
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)
(global-visual-line-mode t)

;; Put all auto-generated configurations in a separate file
(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file :no-error-if-file-is-missing)

;; Set up the package manager
(require 'package)
(package-initialize)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; Set up use-package
(when (< emacs-major-version 29)
  (unless (package-installed-p 'use-package)
    (unless package-archive-contents
      (package-refresh-contents))
    (package-install 'use-package)))

;; minibuffer escape
(global-set-key [escape] 'keyboard-escape-quit)

;;(load-theme 'deeper-blue)
;; dark mode
(when (display-graphic-p)
  (invert-face 'default)
  )
(set-variable 'frame-background-mode 'dark)

;; vim key bindings
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


;;(require 'keybindings "/home/alvaro/.config/emacs/alvaro/keybindings.el")
(require 'keybindings "~/.config/emacs/alvaro/keybindings.el")


;; which key
(use-package which-key
  :ensure t
  :init
    (which-key-mode 1)
  :config
  (setq which-key-side-window-location 'bottom
	  which-key-sort-order #'which-key-key-order-alpha
	  which-key-sort-uppercase-first nil
	  which-key-add-column-padding 1
	  which-key-max-display-columns nil
	  which-key-min-display-lines 6
	  which-key-side-window-slot -10
	  which-key-side-window-max-height 0.25
	  which-key-idle-delay 0.8
	  which-key-max-description-length 25
	  which-key-allow-imprecise-window-fit t
	  which-key-separator " → " ))


;; syntax check
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))
(add-hook 'after-init-hook #'global-flycheck-mode)



(provide 'init)

;;; init.el ends here
