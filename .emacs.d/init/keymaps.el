;; Global keymap
(general-define-key
 "M-;" 'recenter-top-bottom
 "M-J" 'scroll-up
 "M-K" 'scroll-down
 "M-g" 'keyboard-quit
 "M-j" 'next-error
 "M-k" 'previous-error
 "M-q" 'keyboard-quit
 "RET" 'newline-and-indent)
(general-define-key
 :states 'normal
 "j" 'evil-next-visual-line
 "k" 'evil-previous-visual-line
 "M-_" 'evil-redo)

;; Fast map
(general-define-key
 :prefix-command 'fast-map
 "b" 'switch-to-buffer
 "d" 'dired
 "e" 'eval-last-sexp
 "f" 'find-file
 "g" 'imenu
 "k" 'server-edit-or-kill-buffer
 "q" 'abort-recursive-edit)
(key-chord-define-global "mk" 'fast-map)
