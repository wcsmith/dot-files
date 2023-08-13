(use-package recentf
  :custom
  (recentf-max-saved-items 1024)

  :config
  (add-to-list 'recentf-exclude "^/tmp/buildifier.*")
  (recentf-mode 1))
