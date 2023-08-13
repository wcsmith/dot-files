(use-package ido-other-window
  :after ido

  :general
  (:keymaps '(ido-buffer-completion-map
              ido-common-completion-map
              ido-file-completion-map
              ido-file-dir-completion-map
              minibuffer-local-map)
   "M-o" 'ido-invoke-in-other-window))
