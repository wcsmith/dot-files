(use-package ido
  :custom
  (ido-auto-merge-delay-time nil)
  (ido-auto-merge-work-directories-length -1)
  (ido-enable-flex-matching t)
  (ido-everywhere t)
  (ido-show-dot-for-dired t)
  (ido-use-virtual-buffers t)
  (ido-use-faces nil)

  :general
  (:keymaps '(ido-buffer-completion-map
              ido-common-completion-map
              ido-file-completion-map
              ido-file-dir-completion-map
              minibuffer-local-map)
   "M-j" 'ido-next-match
   "M-k" 'ido-prev-match)
  (:keymaps 'ido-buffer-completion-map
   "M-d" 'ido-kill-buffer-at-head)
  (:keymaps 'ido-buffer-completion-map
   "+" 'ido-make-directory)
  (:keymaps 'minibuffer-local-map
   "<M-return>" 'ido-select-text)

  :config
  (ido-mode t))
