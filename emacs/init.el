
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-to-list 'load-path "~/.emacs.d/load-path/")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(css-indent-offset 2)
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-enter-indents-newline nil)
 '(puppet-indent-level 2)
 '(ruby-deep-indent-paren nil)
 '(safe-local-variable-values (quote ((encoding . utf-8)))))

(setq show-trailing-whitespace t)
(setq-default indent-tabs-mode nil)
(setq tab-width 2)
(setq show-trailing-whitespace t)
  ;; espresso-mode
(autoload #'espresso-mode "espresso" "Start espresso-mode" t)
 ;(add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . espresso-mode))

(global-set-key "\M-g" 'goto-line)


(line-number-mode 1)
(column-number-mode 1)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;;
;; Setup puppet-mode for autoloading
;;
(autoload 'puppet-mode "~/.emacs.d/puppet-mode.elc" "Major mode for editing puppet manifests")

(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))

;; eclim
(require 'eclim)
(require 'eclimd)
(global-eclim-mode)

(setq eclim-auto-save t
 eclim-executable "~/lib/eclipse-4.3/eclim"
 eclimd-executable "~/lib/eclipse-4.3/eclimd")

;; regular auto-complete initialization
(require 'auto-complete-config)
(ac-config-default)

;; add the emacs-eclim source
(require 'ac-emacs-eclim-source)
(ac-emacs-eclim-config)



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
