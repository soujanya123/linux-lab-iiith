;;; Adapted from Sebastian Rose's org publishing tutorial at 
;;; http://orgmode.org/worg/org-tutorials/org-publish-html-tutorial.html

;;; default-dir is the directory from where the emacs to run this script is called. 
(defvar base-dir default-directory)
;;; (defvar base-dir "/home/anoop/Courses/ITWS2/sysw/offerings/2011-spring/")
(defvar publishing-dir (concat base-dir "build/sysw-vlab-talk/"))
(defvar org-notes '())
(defvar org-static '())
(defvar sysw-vlab-talk '())

(setq org-notes
`("org-notes"
 :base-directory ,(concat base-dir "src/")
 :base-extension "org"
 :publishing-directory ,publishing-dir
 :recursive t
 :publishing-function org-publish-org-to-html
 :headline-levels 4             ; Just the default for this project.
 :auto-preamble t
 :auto-sitemap t
  ))

 (setq org-static `("org-static"
  :base-directory ,(concat base-dir "src/")
  :base-extension "css\\|js\\|png\\|ico\\|jpg\\|png\\|gif\\|mp3\\|ogg\\|swf\\|emacs\\|sh\\|py\\|pdf\\|tex\\|ss\\|rkt\\|flv\\|tgz"
  :publishing-directory ,publishing-dir
  :recursive t
  :publishing-function org-publish-attachment
  ))

 (setq sysw-vlab-talk  '("sysw-vlab-talk" :components ("org-notes" "org-static")))

 (require 'org-publish)
 ; (require 'htmlize)
 ; (load "~/emacs/lisp/htmlize/htmlize.el")
 ; the script is running from the parent directory
 (load-file "./elisp/htmlize.el")

 (setq org-publish-project-alist
       (list org-notes org-static sysw-vlab-talk))

(org-publish-project 
 sysw-vlab-talk  ; project name
 t ; force
 )

