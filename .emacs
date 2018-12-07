(custom-set-variables
 '(menu-bar-mode nil))
(set-background-color "black")
(set-foreground-color "orange")
(setq inhibit-splash-screen t)
(set-face-attribute 'default nil :height 300)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;(elpy-enable)
;(add-to-list 'load-path "~/org-mode")
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
;(setq org-log-done t)

;(add-to-list 'load-path "~/slime")
;(require 'slime-autoloads)
;(setq inferior-lisp-program "/usr/bin/clisp")

(setq flymake-python-pyflakes-executable "flake8")
(require 'flymake-python-pyflakes)
(custom-set-faces
 '(flymake-errline ((((class color)) (:underline "red"))))
 '(flymake-warnline ((((class color)) (:underline "yellow")))))

(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)

(custom-set-variables
 '(help-at-pt-timer-delay 0.9)
      '(help-at-pt-display-when-idle '(flymake-overlay)))

;; (setq jedi:setup-keys t)
;; (require 'jedi)
;; (add-to-list 'ac-sources 'ac-source-jedi-direct)
;; (defvar jedi-config:with-virtual-env "/home/john/venv3-head")
;; (defvar jedi-config:vca-root-sentinel ".git")
;; (defvar jedi-config:python-module-sentinel "__init__.py")
;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:complete-on-dot t)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(add-hook 'before-save-hook 'gofmt-before-save)
(add-to-list 'load-path "/home/john/go_workspace/src/github.com/dougm/goflymake")
(require 'go-flymake)
(require 'go-flycheck)
(add-hook 'go-mode-hook (lambda ()
			  (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))
(add-hook 'go-mode-hook (lambda ()
			  (local-set-key (kbd "C-c i") 'go-goto-imports)))
(add-hook 'go-mode-hook (lambda ()
			  (local-set-key (kbd "M-.") 'godef-jump)))


