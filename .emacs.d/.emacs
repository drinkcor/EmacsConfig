;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
 ;; (add-to-list 'package-archives '("melpa". "http://melpa.org/packages/") t)
  (package-initialize)
  )

(require 'cl)

;;add whatever packages you want here
(defvar drinkcor/packages '(
			    company
			    monokai-theme
			    hungry-delete
			    swiper
			    counsel
			    smartparens
			    js2-mode
			    nodejs-repl
			    ) "Default packages")

(setq package-selected-packages drinkcor/packages)

(defun drinkcor/packages-installed-p()
  (loop for pkg in drinkcor/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (drinkcor/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg drinkcor/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(global-auto-revert-mode t)
(require 'hungry-delete)
(global-hungry-delete-mode)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(electric-indent-mode 1)

;;(setq column-number-mode t)
;;(setq line-number-mode t)
(global-linum-mode t)

(set-background-color "black")
(set-foreground-color "white")
(set-face-foreground 'region "green")
;;(set-face-background 'region "blue")

(setq inhibit-splash-screen t)

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs"))

(global-set-key (kbd "<f2>") 'open-my-init-file)

(global-company-mode t)
;;(add-hook 'after-init-hook 'global-company-mode)
;;(add-hook 'c++-mode-hook 'global-company-mode)

;;config for swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)
(global-set-key (kbd "C-h C-v") 'find-variable)

(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a") 'org-agenda)

;;config for smartparens
(require 'smartparens-config)
;; Always start smartparens mode in emacs-lisp-mode.
(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)


;;config for js2-mode for js files
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

(setq-default cursor-type 'bar)

(require 'org)
(setq org-src-fontify-natively t)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(delete-selection-mode t)

(setq initial-frame-alist (quote ((fullscreen . maximized))))

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(global-hl-line-mode t)

;;(setq make-backup-files nil)
(custom-set-variables)

(custom-set-faces
 )

(recentf-mode t)

 


