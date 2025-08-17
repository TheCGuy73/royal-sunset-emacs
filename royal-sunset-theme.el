;;; royal-sunset-theme.el --- A modern, dark theme with a sunset vibe.

(require 'royal-sunset-colors)

;;;###autoload
(deftheme royal-sunset "A theme with a royal sunset color palette.")

(let ((class '((class color) (min-colors 89))))
  (custom-theme-set-faces
   'royal-sunset
   `(default ((,class (:background ,royal-sunset-brown :foreground ,royal-sunset-white))))
   `(cursor ((,class (:background ,royal-sunset-yellow))))
   `(region ((,class (:background ,royal-sunset-purple :foreground ,royal-sunset-white))))
   `(font-lock-keyword-face ((,class (:foreground ,royal-sunset-yellow))))
   `(font-lock-string-face ((,class (:foreground ,royal-sunset-yellow))))
   `(font-lock-comment-face ((,class (:foreground ,royal-sunset-purple))))
   `(font-lock-function-name-face ((,class (:foreground ,royal-sunset-magenta))))
   `(font-lock-variable-name-face ((,class (:foreground ,royal-sunset-white))))))

;;;###autoload
(let ((file-path (or load-file-name (buffer-file-name))))
  (when (and file-path
             (boundp 'custom-theme-load-path)
             (not (member (file-name-directory file-path)
                          custom-theme-load-path)))
    (add-to-list 'custom-theme-load-path
                 (file-name-directory file-path))))

(provide-theme 'royal-sunset)

(provide 'royal-sunset-theme)

;;; royal-sunset-theme.el ends here
