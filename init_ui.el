;;(menu-bar-mode -1)                      ;禁用菜单栏
(tool-bar-mode -1)                      ;禁用工具栏


;; Show filename in title bar
;;(setq frame-title-format "%b - Emacs")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Emacs 主题设置 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 用户自定义变量
(custom-set-variables
 ;; Term
 '(term-default-bg-color "#000000")     ;term默认背景色
 '(term-default-fg-color "#dddd00")     ;term默认前景色
 ;; 高亮括号结构
 '(hl-paren-colors (quote (
                           "Cyan"       ;一级颜色
                           "Gold"       ;二级颜色
                           "Red"        ;三级颜色
                           )))
 ;; Smiley
 '(smiley-style (quote medium))         ;笑脸的风格, 中等, 10种颜色
 )
 
 (setq default-frame-alist
  '((tool-bar-lines . 0)
    (menu-bar-lines . 1)
    (background-color . "cornsilk")))

(custom-set-faces
  ;; Tabbar标签颜色
 '(tabbar-default                       ;默认
   ((((class color grayscale)
      (background dark))
     (
      :inherit variable-pitch
               :height 1.1
               ;; :family "DejaVu Sans YuanTi Mono"
               :family "文泉驿等宽微米黑"
               ))))
 '(tabbar-separator                     ;分隔线
   ((t (
        :inherit tabbar-default
                 :background "black"
                 :foreground "brown" :height 0.1
                 ))))
 '(tabbar-button-highlight              ;按钮
   ((t (
        :inherit tabbar-default
                 :background "black"
                 :foreground "green"
                 :box (:color "red")
                 ))))
 '(tabbar-button
   ((t (
        :inherit tabbar-default
                 :background "black"
                 :foreground "red"
                 :box (
                       :line-width 1
                                   :color "black"
                                   :style released-button)))))
 '(tabbar-selected                      ;当前正在使用的标签
   ((t (
        :inherit tabbar-default
                 :background "black"
                 :foreground "LawnGreen"
                 :box (
                       :line-width 1
                                   :color "#014500"
                                   :style released-button)))))
 '(tabbar-selected-face
   ((t (
        :inherit tabbar-default-face
                 :background "black"
                 :foreground "grey"
                 :box (
                       :line-width -1
                                   :color "grey"
                                   :style released-button)))))
 '(tabbar-unselected                    ;未使用的标签
   ((t (
        :inherit tabbar-default
                 :background "black"
                 :foreground "#10650F"
                 :box (
                       :line-width 1
                                   :color "Grey10"
                                   :style pressed-button)))))
 '(tabbar-unselected-face
   ((t (
        :inherit tabbar-default-face
                 :background "black"
                 :foreground "white"
                 :box (
                       :line-width -1
                                   :color "black"
                                   :style pressed-button)))))

  ;; Showtip
 '(showtip-face
   ((((class color))
     (:inherit tooltip
               :background "#730D0D"
               :foreground "White"
               :height 1.0
               ;; :family "DejaVu Sans YuanTi Mono"
               :family "文泉驿等宽微米黑"
               ))))
 ;; 高亮 CL 函数
 '(highlight-cl                         ;`cl' 函数
   ((t (:foreground "#20ABFC"
                    :underline nil))))
 '(highlight-cl-and-other               ;`cl' 函数， 但是定义在其他包
   ((t (:foreground "#20ABFC"
                    :underline nil))))
 '(highlight-cl-macro                   ;`cl' 宏
   ((t (:underline nil))))

)

;;set the spacing between lines
(defun toggle-line-spacing ()
  "Toggle line spacing between no extra space to extra half line height."
  (interactive)
  (if (eq line-spacing nil)
      (setq-default line-spacing 0.5) ; add 0.5 height between lines
;;    (setq-default line-spacing nil)   ; no extra heigh between lines
    )
  (redraw-display))


;; set up the theme of emacs
(load-theme 'misterioso)

;;maximize Emacs on Windows at startup
(w32-send-sys-command 61488)


(message "init_ui loaded")
(provide 'init_ui)
