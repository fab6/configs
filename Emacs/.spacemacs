;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.
(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     helm
     ipython-notebook
     windows-scripts
     markdown
     ;javascript
     java
     csv
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ranger
     auto-completion
     python
     evil-commentary
     c-c++
     org
     git
     FDS
     DAKOTA
     vimscript
     ;;ivy
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(dired-narrow dired-rainbow ); ein ein-loaddefs ein-notebook ein-subpackages)
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https nil 
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner nil
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents bookmarks projects)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 10
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(monokai
                         spacemacs-dark
                         spacemacs-light
                         solarized-light
                         solarized-dark
                         leuven
                         zenburn)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 15
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.

   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; (Not implemented) dotspacemacs-distinguish-gui-ret nil
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 1.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil 
   dotspacemacs-smart-closing-parenthesis nil 
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
;(require 'ein)
;(require 'ein-loaddefs)
;(require 'ein-notebook)
;(require 'ein-subpackages)
;; Completion -----------------------------------------------------------------------------
(global-company-mode)
;(auto-completion :variables
;                 auto-completion-enable-snippets-in-popup t
;                 )
;
(setq-default dotspacemacs-configuration-layers
              '((auto-completion :variables
                                 auto-completion-enable-snippets-in-popup t)))
;(setq-default dotspacemacs-configuration-layers
;              '((auto-completion :variables
;                                 auto-completion-enable-sort-by-usage t)))
;
; (setq-default dotspacemacs-configuration-layers
;               '((auto-completion :variables
;                                  auto-completion-enable-help-tooltip t)))


(setq-default dotspacemacs-configuration-layers '(
                                                  (auto-completion :variables
                                                                   auto-completion-return-key-behavior 'complete
                                                                   auto-completion-tab-key-behavior 'cycle
                                                                   auto-completion-complete-with-key-sequence nil
                                                                   auto-completion-complete-with-key-sequence-delay 0.1
                                                                   auto-completion-private-snippets-directory nil)
                                                  ))



 ;; company delay until suggestions are shown
 (setq company-idle-delay 0.05)

  ;; weight by frequency
  (setq company-transformers '(company-sort-by-occurrence))

  ;; Add yasnippet support for all company backends
  ;;  ;; https://github.com/syl20bnr/spacemacs/pull/179
  (defvar company-mode/enable-yas t "Enable yasnippet for all backends.")

  (defun company-mode/backend-with-yas (backend)
     (if (or (not company-mode/enable-yas) (and (listp backend)    (member 'company-yasnippet backend)))
  ;       backend
       (append (if (consp backend) backend (list backend))
               '(:with company-yasnippet))))
  ;
   (setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))

  ;; Git -----------------------------------------------------------------------------
  (global-git-commit-mode t)

  ;; Python -----------------------------------------------------------------------------
  ;(add-hook 'python-mode-hook 'spacemacs/toggle-highlight-indentation-on)
(add-hook 'python-mode-hook 'highlight-indentation-mode)

  (defun run-python-once ()
    (remove-hook 'python-mode-hook 'run-python-once)
    (run-python (python-shell-parse-command)))

  (add-hook 'python-mode-hook 'run-python-once)

(setq python-shell-interpreter "//home/fbraenns/00_ALLG/Software/Anac3/bin/python")
(setq python-shell-interpreter-args "-m IPython --simple-prompt -i")


  ;; ;; FDS -----------------------------------------------------------------------------
  ;; (require 'fds-mode)

  ;; ;; Dakota -----------------------------------------------------------------------------
  ;; (require 'dakota-mode)

;; Commands -----------------------------------------------------------------------------
(defun runPythonInTerminal() ;; Fenster geht immer zu
  "RunPythonInTerminal"
  (interactive)
  (call-process-shell-command (concat (dired-shell-stuff-it "xfce4-terminal -e python " (dired-get-marked-files) nil)" ")); " "
  )

(defun openInParaView()
  "Open in vim terminal"
  (interactive)
  (call-process-shell-command (concat (dired-shell-stuff-it "/data/Software/ParaView/ParaView-5.0.0-Qt4-OpenGL2-MPI-Linux-64bit/bin/paraview --data=" (dired-get-marked-files) nil))); " "
  )
(defun openInVisit()
  "Open in vim terminal"
  (interactive)
  (call-process-shell-command (concat (dired-shell-stuff-it "/data/Software/Visit/2.10.0/bin/visit -o " (dired-get-marked-files) nil))); " "
  )

(defun openInVim()
  "Open in vim terminal"
  (interactive)
  (call-process-shell-command (concat (dired-shell-stuff-it "xfce4-terminal -e vim " (dired-get-marked-files) nil))); " "
  )
(defun openInLibreOffice()
  (interactive)
  (save-window-excursion
    (dired-do-async-shell-command
     "libreoffice" current-prefix-arg
     (dired-get-marked-files t current-prefix-arg))))
(defun openInDisplay()
  (interactive)
  (save-window-excursion
    (dired-do-async-shell-command
     "display" current-prefix-arg
     (dired-get-marked-files t current-prefix-arg))))
(defun openInVeusz()
  (interactive)
  (save-window-excursion
    (dixred-do-async-shell-command
     "veusz" current-prefix-arg
     (dired-get-marked-files t current-prefix-arg))))

(defun xterm ()
  (interactive)
  (call-process-shell-command "xfce4-terminal" nil 0 nil ))

(defun xterm_tmux ()
  (interactive)
  (call-process-shell-command "xfce4-terminal -e tmux" nil 0 nil ))


;; DIRED-----------------------------------------------------------------------------

(defun copybackground()
  "Copy"
  (interactive)
  (call-process-shell-command (concat (dired-shell-stuff-it "cp -R "
                                                            (dired-get-marked-files) nil) " "
                                                            (dired-dwim-target-directory) " &")); funktioniert aber nicht im Hintergrund
  )

(eval-after-load 'dired
  '(evil-define-key 'normal dired-mode-map
     ;;     (kbd "h") 'diredp-up-directory-reuse-dir-buffer
     ;;     (kbd "l") 'diredp-find-file-reuse-dir-buffer)
     (kbd "h") 'dired-up-directory

     ;; Auto-refresh dired on file change
                                        ;(define-key dired-mode-map ",g" 'revert-buffer)
                                        ;(add-hook 'dired-mode-hook 'auto-revert-mode)
     (kbd "l") 'dired-find-file
     (kbd "b") 'scroll-down
     (kbd "f") 'scroll-up

     (kbd "x") 'xterm
     (kbd "X") 'xterm_tmux
                                        ;(kbd "X") 'openInVim

                                        ;(kbd "q") 'evil-record-macro
     (kbd "0") 'evil-goto-first-line
     (kbd "G") 'evil-goto-line

     (kbd "d") 'dired-do-delete
     (kbd "c") 'copybackground
     (kbd "W") 'wdired-change-to-wdired-mode

     (kbd "N") 'dired-narrow
                                        ;(kbd "F") 'helm-find-files
                                        ;(kbd "F") 'find-files

     (kbd  "`" ) '(lambda () (interactive) (bookmark-jump "`"))
                                        ;(kbd  "0" ) '(lambda () (interactive) (bookmark-jump "0"))
     (kbd  "1" ) '(lambda () (interactive) (bookmark-jump "1"))
     (kbd  "2" ) '(lambda () (interactive) (bookmark-jump "2"))
     (kbd  "3" ) '(lambda () (interactive) (bookmark-jump "3"))
     (kbd  "4" ) '(lambda () (interactive) (bookmark-jump "4"))
     (kbd  "5" ) '(lambda () (interactive) (bookmark-jump "5"))
     (kbd  "6" ) '(lambda () (interactive) (bookmark-jump "6"))
     (kbd  "7" ) '(lambda () (interactive) (bookmark-jump "7"))
     (kbd  "8" ) '(lambda () (interactive) (bookmark-jump "8"))
     (kbd  "9" ) '(lambda () (interactive) (bookmark-jump "9"))


     (kbd "ss") '(lambda () "sort by Size" (interactive) (dired-sort-other (concat dired-listing-switches " -S")))
     (kbd "sx") '(lambda () "sort by extension" (interactive) (dired-sort-other (concat dired-listing-switches " -X")))
     (kbd "sd") '(lambda () "sort by time" (interactive) (dired-sort-other (concat dired-listing-switches " -t")))
     (kbd "sn") '(lambda () "sort by name" (interactive) (dired-sort-other (concat dired-listing-switches)))


     )
  )

(setq dired-guess-shell-alist-user
      (list
       (list "\\.pdf$" "/usr/bin/evince");; fixed rule
       ))
       ;; ;; possibly more rules...
       ;; (list "\\.bar$";; rule with condition test
       ;;       '(if condition
       ;;            "bar-command-1"
       ;;          "bar-command-2"))))

;; dired RAINBOW -----------------------------------------------------------------------------

(require 'dired-rainbow)
                                        ;(require 'dired-narrow)
(setq dired-listing-switches "-lXGh --group-directories-first")
(setq dired-dwim-target t)


(dired-rainbow-define-chmod executable-unix "AntiqueWhite3" "-.*x.*")
(defconst my-dired-media-files-extensions
  '("mp3" "mp4" "MP3" "MP4" "avi" "mpg" "flv" "ogg")
  "Media files.")

(dired-rainbow-define html "#4e9a06" ("htm" "html" "xhtml"))
(dired-rainbow-define document "lightblue" ("chm" "CHM" "tex" ))
(dired-rainbow-define pdf "OrangeRed" ("pdf" ))
(dired-rainbow-define document2 "DodgerBlue1" ( "doc" "docx" "xls" "xlsx" "ppt" "pptx" "odt" "ott" "rtf" "sdw" "ods" "sxc" "odp" "otp" ))
(dired-rainbow-define tables "green2" ("xls" "xlsx" "ods" "sxc" ))
(dired-rainbow-define python "LightGoldenrod1" ("py"))
;; (dired-rainbow-define fds "cyan" ("fds"))
(dired-rainbow-define fds2 "Gold" ("smv" "out"))
(dired-rainbow-define RestartFDS "Chocolate" ("restart"))
(dired-rainbow-define data "Orange" ("pickle" "json""h5" "vtk" "silo" "xmf" "csv"))
(dired-rainbow-define data2 "Gold" ("dat"))

(dired-rainbow-define CAD "yellow" ("igs" "stp" "stl" "blend" "ansa"))
;; (dired-rainbow-define STL "dark salmon" ("stl"))
(dired-rainbow-define Sims "cyan" ("sim" "fds" "ccm" "cf" ))
(dired-rainbow-define Sims "brown" ("el" ))
(dired-rainbow-define Zips "violet" ("tar" "zip" "rar" "gz" ))
(dired-rainbow-define Bash "yellow green" ("sh" ))
(dired-rainbow-define Plot "pink" ("vsz"  "gnu" "plot" ))

(dired-rainbow-define pics "turquoise" ("png" "jpg" "tiff"))
(dired-rainbow-define media "#ce5c00" my-dired-media-files-extensions)

                                        ; boring regexp due to lack of imagination
;; (dired-rainbow-define log (:inherit default :italic t) ".*\\.log")
;(dired-rainbow-define log "MediumSpringGreen" ("log" "ini" "txt"))
;; (dired-rainbow-define log2 "SpringGreen1" ("log" "ini" "txt"))
(dired-rainbow-define log2 "SpringGreen1" (".*\log.*" "log" "ini" "txt"))
(dired-rainbow-define OPF "brown1" (".*\Properties" ".*\Dict"))
(dired-rainbow-define Dakota "cyan2" ("rst"  "in"))

(setq dired-recursive-deletes 'always)
;; KEYS-----------------------------------------------------------------------------

(spacemacs/set-leader-keys "d" 'dired-jump)
(spacemacs/set-leader-keys "Cc" 'helm-calcul-expression)

(define-key evil-normal-state-map (kbd ",f") 'make-frame)
(define-key evil-normal-state-map (kbd ",t") 'toggle-truncate-lines)

(define-key evil-normal-state-map (kbd ",a") 'helm-ag)
;(define-key evil-normal-state-map (kbd ",a") 'counsel-ag)
(define-key evil-normal-state-map (kbd ",A") 'helm-do-ag)
(define-key evil-normal-state-map (kbd ",E") 'spacemacs/open-in-external-app)

;(define-key evil-normal-state-map (kbd ",d") 'dired-jump)
;(define-key evil-normal-state-map (kbd ",D") 'dired-jump-other-window)

;(define-key evil-normal-state-map (kbd ",R") 'helm-recentf)
;(define-key evil-normal-state-map (kbd ",r") 'counsel-recentf)

(define-key evil-normal-state-map (kbd ",q") 'server-edit)

(define-key evil-normal-state-map (kbd ",o") 'helm-find-files)
;(define-key evil-normal-state-map (kbd ",b") 'helm-buffers-list)
(define-key evil-normal-state-map (kbd ",O") 'helm-occur)
(define-key evil-normal-state-map (kbd ",\/") 'helm-find)
;(define-key evil-normal-state-map (kbd ",\\") 'counsel-find-file-extern)


(define-key evil-normal-state-map (kbd ",k") 'kill-buffer)
(define-key evil-normal-state-map (kbd ",x") 'xterm)
(define-key evil-normal-state-map (kbd ",w") 'save-buffer)
(define-key evil-normal-state-map (kbd ",v") 'split-window-horizontally)
(define-key evil-normal-state-map (kbd ",h") 'split-window-vertically)

(define-key evil-normal-state-map (kbd  ",`" ) '(lambda () (interactive) (bookmark-jump "`")))
;(define-key evil-normal-state-map (kbd  "0" ) '(lambda () (interactive) (bookmark-jump "0")))
(define-key evil-normal-state-map (kbd  ",1" ) '(lambda () (interactive) (bookmark-jump "1")))
(define-key evil-normal-state-map (kbd  ",2" ) '(lambda () (interactive) (bookmark-jump "2")))
(define-key evil-normal-state-map (kbd  ",3" ) '(lambda () (interactive) (bookmark-jump "3")))
(define-key evil-normal-state-map (kbd  ",4" ) '(lambda () (interactive) (bookmark-jump "4")))
(define-key evil-normal-state-map (kbd  ",5" ) '(lambda () (interactive) (bookmark-jump "5")))
(define-key evil-normal-state-map (kbd  ",6" ) '(lambda () (interactive) (bookmark-jump "6")))
(define-key evil-normal-state-map (kbd  ",7" ) '(lambda () (interactive) (bookmark-jump "7")))
(define-key evil-normal-state-map (kbd  ",8" ) '(lambda () (interactive) (bookmark-jump "8")))
(define-key evil-normal-state-map (kbd  ",9" ) '(lambda () (interactive) (bookmark-jump "9")))

(define-key evil-visual-state-map (kbd "M-h") 'evil-window-left)
(define-key evil-visual-state-map (kbd "M-j") 'evil-window-down)
(define-key evil-visual-state-map (kbd "M-k") 'evil-window-up)
(define-key evil-visual-state-map (kbd "M-l") 'evil-window-right)

(define-key evil-insert-state-map (kbd "M-h") 'evil-window-left)
(define-key evil-insert-state-map (kbd "M-j") 'evil-window-down)
(define-key evil-insert-state-map (kbd "M-k") 'evil-window-up)
(define-key evil-insert-state-map (kbd "M-l") 'evil-window-right)


(define-key evil-normal-state-map (kbd "M-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "M-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "M-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "M-l") 'evil-window-right)

;; RANGER -----------------------------------------------------------------------------
(setq ranger-cleanup-on-disable t)
(setq ranger-show-dotfiles t)
(setq ranger-ignored-extensions '("mkv" "iso" "mp4"))
(setq ranger-max-preview-size 10)

;; MISC -----------------------------------------------------------------------------
(add-to-list 'auto-mode-alist '("\\Dict$" . c++-mode)) ; cfast
(add-to-list 'auto-mode-alist '("\\Properties$" . c++-mode)) ; cfast
(add-to-list 'auto-mode-alist '("\\Zones$" . c++-mode)) ; cfast
(add-to-list 'auto-mode-alist '("\\Gas$" . c++-mode)) ; cfast
(add-to-list 'auto-mode-alist '("\\Controls$" . c++-mode)) ; cfast

;(add-to-list 'auto-mode-alist '("transportProperties" . c++-mode))
;(add-to-list 'auto-mode-alist '("turbulenceProperties" . c++-mode))
                                        ;(add-to-list 'auto-mode-alist '("turbulenceProperties" . c++-mode))
;(add-to-list 'auto-mode-alist '("mechanicalProperties" . c++-mode))
;(add-to-list 'auto-mode-alist '("fvSolutdion" . c++-mode))
;(add-to-list 'auto-mode-alist '("fvOptions" . c++-mode))
;(add-to-list 'auto-mode-alist '("decomposeDict" . c++-mode))
;(add-to-list 'auto-mode-alist '("mapFields" . c++-mode))
;(add-to-list 'auto-mode-alist '("sampleDict" . c++-mode))
;(add-to-list 'auto-mode-alist '("rotationDict" . c++-mode))
;(add-to-list 'auto-mode-alist '("sampleSurfaceDict" . c++-mode))
;(add-to-list 'auto-mode-alist '("mirrorMeshDict" . c++-mode))
;(add-to-list 'auto-mode-alist '("fvScheme" . c++-mode))
;(add-to-list 'auto-mode-alist '("controlDict" . c++-mode))
;(add-to-list 'auto-mode-alist '("caseSetup" . c++-mode))
;(add-to-list 'auto-mode-alist '("changeDictionaryDict" . c++-mode))

(add-to-list 'auto-mode-alist '("\\k$" . c++-mode))
(add-to-list 'auto-mode-alist '("\\omega$" . c++-mode))
(add-to-list 'auto-mode-alist '("\\epsilon$" . c++-mode))
(add-to-list 'auto-mode-alist '("\\nut$" . c++-mode))
(add-to-list 'auto-mode-alist '("\\T$" . c++-mode))
(add-to-list 'auto-mode-alist '("\\U$" . c++-mode))
(add-to-list 'auto-mode-alist '("\\p$" . c++-mode))

(add-to-list 'auto-mode-alist '("setFieldsDict" . c++-mode))
(add-to-list 'auto-mode-alist '("decomposeParDict" . c++-mode))
(add-to-list 'auto-mode-alist '("owners" . c++-mode))
(add-to-list 'auto-mode-alist '("boundary" . c++-mode))
(add-to-list 'auto-mode-alist '("faces" . c++-mode))
(add-to-list 'auto-mode-alist '("points" . c++-mode))
(add-to-list 'auto-mode-alist '("neighbour" . c++-mode))

(add-to-list 'auto-mode-alist '("\\.inp$" . f90-mode))
(add-to-list 'auto-mode-alist '("\\.data$" . f90-mode)) ;gpyro
;(add-to-list 'auto-mode-alist '("\\.in$" . f90-mode)) ; cfast

(add-to-list 'auto-mode-alist '("0.0.1" . tcl-mode))
(add-to-list 'auto-mode-alist '("4.0" . tcl-mode))
(add-to-list 'auto-mode-alist '("\\.fds" . fds-mode))
(add-to-list 'auto-mode-alist '("\\.in" . dakota-mode))
(add-to-list 'auto-mode-alist '("\\.cf" . f90-mode))
(add-to-list 'auto-mode-alist '("\\.dak" . dakota-mode))
(add-to-list 'auto-mode-alist '("\\.vsz" . python-mode))

(defun dotspacemacs/user-config ()
  (setq-default evil-escape-key-sequence "fj"))
  )


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(delete-selection-mode nil)
 '(helm-external-programs-associations (quote (("pdf" . "okular"))))
 '(package-selected-packages
   (quote
    (wolfram-mode thrift stan-mode scad-mode qml-mode matlab-mode julia-mode arduino-mode yapfify which-key use-package toc-org spaceline ranger org-projectile neotree live-py-mode helm-company evil-search-highlight-persist evil-mc ein dumb-jump ace-link eclim smartparens evil yasnippet helm helm-core markdown-mode magit dash ws-butler winum websocket volatile-highlights vimrc-mode vi-tilde-fringe uuidgen undo-tree smeargle restart-emacs rainbow-delimiters pyvenv pytest pyenv-mode py-isort powershell powerline popwin pip-requirements persp-mode pcre2el paradox orgit org-present org-pomodoro org-download org-bullets open-junk-file move-text monokai-theme mmm-mode markdown-toc magit-gitflow lorem-ipsum linum-relative link-hint info+ indent-guide hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-c-yasnippet helm-ag goto-chg google-translate golden-ratio gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-commit gh-md fuzzy flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-numbers evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-commentary evil-args evil-anzu eval-sexp-fu disaster dired-rainbow dired-narrow diminish define-word dactyl-mode cython-mode csv-mode company-statistics company-emacs-eclim company-c-headers company-anaconda column-enforce-mode cmake-mode clean-aindent-mode clang-format cl-generic bracketed-paste bind-key auto-yasnippet auto-highlight-symbol aggressive-indent adaptive-wrap ace-window ace-jump-helm-line ac-ispell)))
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 257)) (:foreground "#F8F8F2" :background "#272822")) (((class color) (min-colors 89)) (:foreground "#F5F5F5" :background "#1B1E1C"))))
 '(dired-directory ((t (:background "gray30" :foreground "white smoke"))))
 '(dired-filetype-execute ((t (:foreground "olive drab"))))
 '(dired-filetype-image ((t (:foreground "dark violet"))))
 '(dired-filetype-source ((t (:foreground "orange"))))
 '(dired-marked ((t (:inherit bold :background "chocolate" :foreground "gray20"))))
 '(diredp-dir-heading ((t (:background "#00003F3F3434" :foreground "dark orange" :height 1.0))))
 '(diredp-flag-mark ((t (:background "gray20" :foreground "Yellow"))))
 '(diredp-flag-mark-line ((t (:foreground "azure" :background "dim gray"))))
 '(evil-search-highlight-persist-highlight-face ((t (:background "yellow1" :foreground "black"))))
 '(font-lock-comment-face ((t (:foreground "lime green" :height 1.0))))
 '(helm-ff-directory ((t (:background "gray30" :foreground "white smoke"))))
 '(helm-selection ((t (:inherit bold :background "LightBlue4" :underline nil))))
 '(helm-selection-line ((t (:background "goldenrod" :foreground "#F8F8F0" :underline nil))))
 '(helm-source-header ((t (:background "sienna3" :foreground "#272822" :underline nil))))
 '(hl-line ((t (:background "dark slate gray")))))
