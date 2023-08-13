(use-package evil
  :custom
  (evil-respect-visual-line-mode t)
  (evil-search-module 'evil-search)
  (evil-undo-system 'undo-fu)
  (evil-want-keybinding nil)

  :config
  (evil-mode 1)
  (evil-esc-mode 1))
