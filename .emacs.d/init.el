;; Emacs Initialization

;; Set up straight.el.
(setq package-enable-at-startup nil)
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el"
			 user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Set up use-package.
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)
(use-package general)
(use-package use-package-chords)

;; Add /lisp to load path
(add-to-list 'load-path (concat user-emacs-directory "lisp"))

;; Load /init files
(mapc 'load (file-expand-wildcards (concat user-emacs-directory "init/*.el") t))
