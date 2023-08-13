(use-package evil-args
  :after evil

  :general
  (:keymaps 'evil-inner-text-objects-map
   "a" 'evil-inner-arg)
  (:keymaps 'evil-outer-text-objects-map
   "a" 'evil-outer-arg))
