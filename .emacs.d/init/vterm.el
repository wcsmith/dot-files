(use-package vterm
  :hook
  (vterm-mode . my-vterm-mode-hook)

  :custom
  (vterm-always-compile-module t)

  :config
  (defun my-vterm-mode-hook ()
    (set (make-local-variable 'global-hl-line-mode) nil)
    (autopair-mode 0)
    (display-line-numbers-mode 0)))
