(ergoemacs-mode 1) ; use the key binding of ergoemacs


(global-linum-mode 1) ; always show line numbers


(column-number-mode 1) ; show the cursor's column position


(show-paren-mode 1) ; turn on paren match highlighting


(global-hl-line-mode 0) ; turn on highlighting current line


(recentf-mode 1) ; keep a list of recently opened files


(add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode)) ;; open the txt file with org-mode


(ido-mode 1) ; use the ido mode to impove the effective of file manage


(require 'autopair)
(autopair-global-mode 0) ;Enable the autopair in all buffers


(require 'yasnippet)
(yas-global-mode 1)    ; enable the yasnippet


(provide 'init_mode)
