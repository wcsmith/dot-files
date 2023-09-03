(use-package key-chord
  :custom
  (key-chord-two-keys-delay 0.16)
  (key-chord-safety-interval-forward 0.0)
  (key-chord-one-key-delay 0.16)

  :chords
  ("jk" . backward-kill-word)

  :config
  (key-chord-mode 1))
