;; Utilities for window and buffers.

(defun delete-other-windows-vertically-first ()
  "Deletes other windows vertically if they exist; otherwise deletes
all other windows."
  (interactive)
  (let ((num-windows (length (window-list))))
    (progn (delete-other-windows-vertically)
	   (if (= num-windows (length (window-list)))
	       (delete-other-windows)))))

(defun swap-buffer-to-primary-window ()
  "Swaps the currently selected buffer with the buffer in the primary
  (first) window."
  (interactive)
  (let ((old-primary-buffer nil)
	(new-primary-buffer nil)
	(primary-window nil)
	(secondary-window nil))
    (progn (if (= (window-numbering-get-number) 1)
	       (progn (setq old-primary-buffer (current-buffer))
		      (setq primary-window (car (window-list)))
		      (select-window-by-number
		       (string-to-number
			(char-to-string (read-char-choice "Window number: "
							  '(?2 ?3)))))
	   	      (setq new-primary-buffer (current-buffer))
		      (setq secondary-window (car (window-list))))
	     (progn (setq new-primary-buffer (current-buffer))
		    (setq secondary-window (car (window-list)))
		    (select-window-by-number 1)
		    (setq old-primary-buffer (current-buffer))
		    (setq primary-window (car (window-list)))))
	   (set-window-buffer secondary-window old-primary-buffer)
	   (set-window-buffer primary-window new-primary-buffer)
	   (select-window-by-number 1))
    (recenter)))

(defun server-edit-or-kill-buffer ()
  "Calls server-edit or kill-this-buffer."
  (interactive)
  (if (and (boundp 'server-buffer-clients) server-buffer-clients)
      (server-edit)
    (kill-this-buffer)))

(defun server-edit-or-kill-buffer-after-save ()
  "Calls server-edit or kill-this-buffer after saving."
  (interactive)
  (save-buffer)
  (server-edit-or-kill-buffer))

(provide 'windows)
