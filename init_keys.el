;; Set up the undo mode
(require 'undo-tree)
(global-undo-tree-mode 1)


(defalias 'redo 'undo-tree-redo)
(global-set-key (kbd "M-z") 'undo) ; 【Alt+z】
(global-set-key (kbd "M-S-z") 'redo) ; 【Alt+Shift+z】
(global-set-key (kbd "C-z") 'undo) ; 【Ctrl+z】
(global-set-key (kbd "C-Z") 'redo) ; 【Ctrl+Shift+z】


(global-set-key (kbd "C-l") 'goto-line) ; go to specific line number


(global-set-key (kbd "M-<f8>")   'open-in-external-app) ; Opening Files in External Apps in Dired mode


(global-set-key (kbd "C-b") 'ido-switch-buffer) ; open the buffer files quickly


(global-set-key (kbd "C-d") 'make-directory) ; short key to create a dir


;; short key for shell
(global-set-key (kbd "<f5>") 'shell)


(require 'highlight-symbol)
(global-set-key (kbd "M-,") 'highlight-symbol-at-point)
(global-set-key (kbd "M-<") 'highlight-symbol-remove-all)
(global-set-key (kbd "M-.") 'highlight-symbol-next)
(global-set-key (kbd "M-m") 'highlight-symbol-prev)


;; Suggested keys for func lookup-word-on-internet
(global-set-key (kbd "<f1> 1") 'lookup-google)
(global-set-key (kbd "<f1> 2") 'lookup-wikipedia)
;;(global-set-key (kbd "<f1> 3") 'lookup-word-definition)
;;(global-set-key (kbd "<f1> 3") 'lookup-word-dict-org)
(global-set-key (kbd "<f1> 3") 'lookup-word-definition2)


;; open a list of recently opened file
(global-set-key (kbd "<kp-subtract>") 'recentf-open-files)


;; setup a hotkey for ido-dired
(global-set-key (kbd "<f6>") 'ido-dired)

;; enter ==> auto indent + new line
;;(define-key global-map (kbd "RET") 'newline-and-indent)

(message "init_keys loaded")
(provide 'init_keys)
