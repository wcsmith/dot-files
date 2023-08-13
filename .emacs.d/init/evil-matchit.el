(use-package evil-matchit
  :after evil

  :general
  (:states 'normal
   "go" 'evilmi-jump-items)

  :config
  (global-evil-matchit-mode 1))
