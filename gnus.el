;;; package --- gnus

;;; Commentary:

;;; Code:
(setq user-mail-address "lll@xeltek-cn.com"
      user-full-name "LL L")

(setq gnus-default-charset 'cn-gb-2312)

(setq gnus-group-name-charset-group-alist (quote ((".*" . gb2312))))

(setq gnus-group-posting-charset-alist
      '(("^\\(cn\\)\\.[^,]*\\(,[        \n]*\\(cn\\)\\.[^,]*\\)*$" gb2312 (gb2312))
        (message-this-is-mail nil nil)
        (message-this-is-news nil t)))

;; A workaround for unsupported charsets
(define-coding-system-alias 'gb18030 'gb2312)
(define-coding-system-alias 'x-gbk 'gb2312)

(setq gnus-select-method '(nnml ""))


(setq
 gnus-select-method '(nnmaildir "mymailbox" (directory "~/.mail/"))
 mail-sources '((maildir :path "~/.mail/" :subdirs ("cur" "new")))
 mail-source-delete-incoming t
 )

(setq gnus-secondary-select-methods nil)
(setq gnus-message-archive-group "nnmaildir+mymailbox:outbox")

(setq smtpmail-auto-credentials
      '(("smtp.263.net"
         25
         "lll@xeltek-cn.com"
         "x3lt3k")))
(setq  smtpmail-default-smtp-server		"smtp.263.net"
       )
(setq  smtpmail-smtp-server		"smtp.263.net"
       )
(setq message-send-mail-function 'smtpmail-send-it)

(provide 'gnus)
;;; .gnus.el ends here
