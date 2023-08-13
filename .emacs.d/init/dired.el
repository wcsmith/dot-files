(use-package dired
  :straight nil

  :custom
  (dired-dwim-target t)
  (dired-listing-switches "-alh")
  (dired-use-ls-dired nil)

  :hook
  (dired-mode . auto-revert-mode)
  (evil-collection-setup . my-evil-collection-setup-dired)

  :config
  (defun my-evil-collection-setup-dired (_mode keymaps)
    (evil-collection-define-key 'normal 'dired-mode-map
      "." 'dired-up-directory
      "o" 'dired-find-file-other-window)))
