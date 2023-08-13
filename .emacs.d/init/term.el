(use-package term
  :general
  (:prefix-command 'fast-map
   "i" 'my-term-edit-external
   "c" 'my-ido-insert-filename)

  :hook
  (term-exec . my-term-exec-hook)
  (term-mode . my-term-mode-hook)
  
  :config
  (prefer-coding-system 'utf-8)
  (set-language-environment 'utf-8)
  (setq system-uses-terminfo nil)

  (defun my-term-exec-hook ()
    (let ((proc (get-buffer-process (current-buffer))))
      (when (processp proc)
        (set-process-query-on-exit-flag proc nil))))

  (defun my-term-mode-hook ()
    (set (make-local-variable 'global-hl-line-mode) nil)
    (autopair-mode 0)
    (display-line-numbers-mode 0))

  (defun my-term-cd (term dir)
    (term-send-string term (format "\C-ucd %s\n" dir)))

  (defun my-ido-cd ()
    (interactive)
    (let ((ido-report-no-match nil)
          (term (if (get-buffer-process (current-buffer))
                    (get-buffer-process (current-buffer))
                  (if (and (boundp 'shell-pop-last-shell-buffer-index)
                           (shell-pop--shell-buffer-name shell-pop-last-shell-buffer-index))
                      (get-buffer-process (shell-pop--shell-buffer-name
                                           shell-pop-last-shell-buffer-index))
                    (progn (term shell-file-name))))))
      (my-term-cd term (ido-read-directory-name "Change to: " nil nil t))))

  (defun my-ido-insert-filename ()
    (interactive)
    (let ((ido-report-no-match nil)
          (term (if (get-buffer-process (current-buffer))
                    (get-buffer-process (current-buffer))
                  (if (and (boundp 'shell-pop-last-shell-buffer-index)
                           (shell-pop--shell-buffer-name shell-pop-last-shell-buffer-index))
                      (get-buffer-process (shell-pop--shell-buffer-name
                                           shell-pop-last-shell-buffer-index))
                    (progn (term shell-file-name))))))
      (term-send-string term
                        (file-relative-name (ido-read-file-name "Change to: " nil nil t)))))

  (defun my-term-edit-external ()
    (interactive)
    (term-send-raw-string "\C-x")
    (term-send-raw-string "\C-e")
    (evil-insert 1)))
