(setenv "ERGOEMACS_KEYBOARD_LAYOUT" "us") ; US

(defmacro interactive-lambda (&rest commands)
  `(lambda () 
     (interactive)
     ,@commands))


(defun add-subdirs-to-load-path (dir)
  "Recursive add directories to `load-path'."
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
    (normal-top-level-add-subdirs-to-load-path)))
(dolist (dir
	 (list
	  "~/.emacs.d/"
	  "~/.emacs.d/ergoemacs-keybindings/"
	  "~/.emacs.d/dependency/"
	  "~/.emacs.d/elpa/yasnippet-20121225.430/"
	  "~/.emacs.d/elpa/git-emacs-master/"
	  "E:/Python_Tool/Pymacs-master"
	  ))
  (add-subdirs-to-load-path dir))

(let ((pkgs-to-load
	'(
	  ;;dependency:
		xeu_elisp_util
		xfrp_find_replace_pairs
		lookup_word_on_internet

	  ;; packages:
		dired+
		ergoemacs-mode
		git-emacs

		
	  ;; lazycat


	  ;; other people:
		prelude-ruby
		rinari-ruby

	  ;; my init
		my_auto
		my_py
		init_mode
		init_func
		init_ui
		init_alias
		init_keys
	  )))
 (dolist (pkg pkgs-to-load)
   (require pkg)
   (message "loaded %s" pkg)))

(message "MyEmacs is up!")
(put 'upcase-region 'disabled nil)
