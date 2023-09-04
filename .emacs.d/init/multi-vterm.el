(use-package multi-vterm
  :config
  (advice-add 'ansi-term :override #'multi-vterm))
