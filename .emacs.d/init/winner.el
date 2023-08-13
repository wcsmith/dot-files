(use-package winner
  :demand t

  :general
  (:prefix-command 'fast-map
   "j" 'winner-undo
   "l" 'winner-redo)

  :config
  (winner-mode 1))
