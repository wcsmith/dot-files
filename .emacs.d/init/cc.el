(use-package cc-mode
  :mode
  ("\\.cu\\'" . c++-mode)
  ("\\.cuh\\'" . c++-mode)
  
  :chords
  (:map c-mode-base-map
   ("--" . "->")))
