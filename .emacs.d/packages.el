(setq package-user-dir (concat home-dir "/.emacs.d/elpa"))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(setq package-enable-at-startup nil)
;; just to make sure it is there
(package-initialize)

(defvar my-packages
  '(ag
    company company-anaconda company-go
    dired+
    exec-path-from-shell ; env vars
    flycheck
    gh ; github
    git-rebase-mode git-commit-mode git-gutter
    go-eldoc go-errcheck go-mode go-projectile
    helm helm-ag helm-dash helm-pydoc
    idle-highlight-mode ; highlight current word
    js2-mode
    json-mode
    magit magit-filenotify magit-gh-pulls magit-push-remote
    material-theme
    multi-term
    ox-reveal
    powerline
    project-explorer
    projectile
    python-environment pylint
    rainbow-mode
    rvm
    solarized-theme
    virtualenvwrapper
    web-mode)
  "List of packages I need installed")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-refresh-contents)
    (package-install p)))

;; require packages here that depend on the ordering later on
(require 'flycheck)