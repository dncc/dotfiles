(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(ecb-tree-buffer-style (quote ascii-guides))
 '(ecb-tree-indent 1)
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(inhibit-startup-screen t)
 '(sr-avfs-root "/home/dnc/.avfs"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
;; arg >= 1 enable the menu bar. menu bar is the file, edit, options,
;; buffers, Tools, Emacs-Lisp, Help
(menu-bar-mode 0)

;; With numeric ARG, display the tool bar if and only if ARG is
;; positive.  Tool bar has icons document (read file), folder (read
;; directory), X (discard buffer), disk (save), disk+pen (save-as),
;; back arrow (undo), scissors (cut), etc.
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; keep buffers synched with disk files
(global-auto-revert-mode t)

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-vim-colors)))

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; Show line numbers
;;(global-linum-mode t)

;;load cedet
(load-file "~/.emacs.d/cedet-1.1/common/cedet.el")
;;Enable prototype help and smart completion
(semantic-load-enable-code-helpers)

;;load ecb
(add-to-list 'load-path "~/.emacs.d/ecb-2.40")
(require 'ecb)
(setq ecb-source-path '("~/workspace"
			"~/.emacs.d"
			"~/documents/howtos"))
;;window numbering mode
(add-to-list 'load-path "~/.emacs.d")
(require 'window-numbering)
(window-numbering-mode 1)

;;ido
;;(require 'ido)
;;lusty explorer
(require 'lusty-explorer)
(global-set-key "\C-x\C-f" 'lusty-file-explorer)
(global-set-key "\C-x\C-b" 'lusty-buffer-explorer)

(require 'sunrise-commander)
(require 'sunrise-x-buttons)
(global-set-key "\C-cX" 'sunrise-cd)

;; inf-ruby.el provides REPL buffer connected to IRB subprocesses
(autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
(autoload 'inf-ruby-keys "inf-ruby" "" t)
(eval-after-load 'ruby-mode
  '(add-hook 'ruby-mode-hook 'inf-ruby-keys))
(eval-after-load 'ruby-mode
  '(add-hook 'ruby-mode-hook (lambda () (local-set-key "\r" 'newline-and-indent))))
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))

;; slime for sbcl
(setq inferior-lisp-program "/usr/bin/sbcl")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
(require 'slime)
(slime-setup '(slime-fancy))

;; vim keybindings
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

;;yasnippets
(add-to-list 'load-path "~/.emacs.d/yasnippet")
(require 'yasnippet)
(yas/global-mode 1)

;; yaml mode
(add-to-list 'load-path "~/.emacs.d/yaml-mode")
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))

;;TODO I might want to put it somewhere else
(load-file "~/downloads/ProofGeneral-4.1/generic/proof-site.el")

;; Hash rocket
(global-set-key (kbd "C-l") " => ")
;; C pointer arrow
(global-set-key (kbd "C-j") "->")

;; Invoke M-x with C-x C-m
(global-set-key "\C-x\C-m" 'execute-extended-command)
;; Backward kill-word
(global-set-key "\C-w" 'backward-kill-word)
;; Rebind backward-kill-region to C-x C-k since
;; C-x C-w is already occupied w/ write-file command
(global-set-key "\C-x\C-k" 'backward-kill-region)

;;Move buffers
(require 'buffer-move)
 (global-set-key "\C-c\C-k" 'buf-move-up)
 (global-set-key "\C-c\C-j" 'buf-move-down)
 (global-set-key "\C-c\C-h" 'buf-move-left)
 (global-set-key "\C-c\C-l" 'buf-move-right)
;;Resize windows
(global-set-key (kbd "S-C-h") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-l") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-j") 'shrink-window)
(global-set-key (kbd "S-C-k") 'enlarge-window)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)
;;Display line and column numbers
(setq line-number-mode t)
(setq column-number-mode t)

;; see matching parens
(show-paren-mode t)
;; delete trailing whitespace
(add-hook 'before-save-hook (lambda() (delete-trailing-whitespace)))

;;Don't truncate lines
(setq truncate-lines t)

;;Separate backup directory
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;;M-x c-set-style ,then for formatting C-x h,  M-C-\
(require 'cc-mode)
(setq c-default-style "linux")

;; markdown mode
(add-to-list 'load-path "~/.emacs.d/markdown-mode")
(require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.text$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

(add-to-list 'auto-mode-alist '("\\.m$" . octave-mode))
(add-to-list 'auto-mode-alist '("\\.rnw$" . latex-mode))

;; emacs speaks statistics
(setq load-path (cons "/usr/share/emacs/site-lisp/ess" load-path))
(require 'ess-site)

;; forth mode
(autoload 'forth-mode "gforth.el")
(autoload 'forth-block-mode "gforth.el")
(add-to-list 'auto-mode-alist '("\\.fs$" . forth-model))
