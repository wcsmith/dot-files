;; Disable GUI.
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(setq ring-bell-function 'ignore)
(setq use-dialog-box nil)

;; Inhibit startup messages.
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-screen t)

;; Split windows horizontally first, with max 80 columns.
(setq split-height-threshold nil)
(setq split-width-threshold 160)

;; Use y or n.
(defalias 'yes-or-no-p 'y-or-n-p)

;; No tabs by default.
(setq-default indent-tabs-mode nil)

;; Require final newline.
(setq-default require-final-newline t)

;; Display line numbers
(global-display-line-numbers-mode t)

;; Default fill.
(setq-default fill-column 80)
(setq-default sentence-end-double-space nil)

;; Put backups in tmp.
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

;; Don't prompt on server kill
(remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function)
