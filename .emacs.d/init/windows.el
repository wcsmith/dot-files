(use-package windows
  :straight nil

  :general
  (:prefix-command 'fast-map
   "0" 'delete-window
   "1" 'delete-other-windows-vertically-first
   "2" 'split-window-vertically
   "3" 'split-window-horizontally
   "4" 'swap-buffer-to-primary-window
   "k" 'server-edit-or-kill-buffer)

  :config
  (evil-ex-define-cmd "q[uit]" 'server-edit-or-kill-buffer)
  (evil-ex-define-cmd "wq" 'server-edit-or-kill-buffer-after-save))
