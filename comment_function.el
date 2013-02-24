Comment func:


******************************************************separate******************************************************
;;pymacs:
;;(autoload 'pymacs-apply "pymacs")
;;(autoload 'pymacs-call "pymacs")
;;(autoload 'pymacs-eval "pymacs" nil t)
;;(autoload 'pymacs-exec "pymacs" nil t)
;;(autoload 'pymacs-load "pymacs" nil t)
;;(autoload 'pymacs-autoload "pymacs")
;;
;;
;;(require 'pymacs)
;;(pymacs-load "ropemacs" "rope-")
;;(setq ropemacs-enable-autoimport t)


******************************************************separate******************************************************

;; make backup to a designated dir, mirroring the full path:
;;(defun my-backup-file-name (fpath)
;;  "Return a new file path of a given file path.
;;If the new path's directories does not exist, create them."
;;  (let* (
;;        (backupRootDir "~/.emacs.d/emacs-backup/")
;;        (filePath (replace-regexp-in-string "[A-Za-z]:" "" fpath )) ; remove Windows driver letter in path, e.g. ¡°C:¡±
;;        (backupFilePath (replace-regexp-in-string "//" "/" (concat backupRootDir filePath "~") ))
;;        )
;;    (make-directory (file-name-directory backupFilePath) (file-name-directory backupFilePath))
;;    backupFilePath
;;  )
;;)
;;(setq make-backup-file-name-function 'my-backup-file-name)


******************************************************separate******************************************************


;;(defun copy-to-register-1 ()
;;	(message "copied to register 1.")
;;  "Copy current line or text selection to register 1.
;;See also: `paste-from-register-1', `copy-to-register'."
;;  (interactive)
;;  (let* (
;;         (bds (get-selection-or-unit 'line ))
;;         (inputStr (elt bds 0) )
;;         (p1 (elt bds 1) )
;;         (p2 (elt bds 2) )
;;         )
;;    (copy-to-register ?1 p1 p2)
;;    (message "copied to register 1: 「%s」." inputStr)
;;))
;;
;;(global-set-key (kbd "<f6>")   'copy-to-register-1)
;;
;;
;;(defun paste-from-register-1 ()
;;  "paste text from register 1.
;;See also: `copy-to-register-1', `insert-register'."
;;  (interactive)
;;  (insert-register ?1 t))
;;
;;(global-set-key (kbd "<f7>")   'paste-from-register-1)
;;


******************************************************separate******************************************************


******************************************************separate******************************************************


******************************************************separate******************************************************


(add-to-list 'load-path
                "~/elpa/yasnippet-20121225.430/")
   (require 'yasnippet)
   (yas-global-mode 1)

   
******************************************************separate******************************************************


;; Keep openning auto-comlete-mode
;;(global-auto-complete-mode t)


******************************************************separate******************************************************



******************************************************separate******************************************************



******************************************************separate******************************************************

;;Enable Ido Everywhere
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
;;(setq ido-use-filename-at-point 'guess)
(setq ido-create-new-buffer 'always)
(setq ido-file-extensions-order '(".java" ".txt" ".py" ".emacs" ".xml" ".el" ".ini" ".cfg"))
;;(setq ido-ignore-extensions t)


******************************************************separate******************************************************


;; Enabole the multiple cursors mode
;;(require 'multiple-cursors)
;;(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
;;(global-set-key (kbd "C->") 'mc/mark-next-like-this)
;;(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
;;(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


******************************************************separate******************************************************




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;separate;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

init.el
init_ui.el


Pending:
init_keys.el



issue:
init_global_mode.el : 
	* recentf-mode ?
	* ido-enable-flex-matching

	

	