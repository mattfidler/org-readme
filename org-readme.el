;;; org-readme.el --- Integrates Readme.org and Commentary/Change-logs.
;; 
;; Filename: org-readme.el
;; Description: Integrate Readme.org and Commentary/Change Logs.
;; Author: Matthew L. Fidler
;; Maintainer: 
;; Created: Fri Aug  3 22:33:41 2012 (-0500)
;; Version: 
;; Last-Updated: Sat Aug  4 00:13:22 2012 (-0500)
;;           By: Matthew L. Fidler
;;     Update #: 22
;; URL: https://github.com/mlf176f2/org-readme
;; Keywords: 
;; Compatibility: 
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;;; Commentary: 
;; 
;; 
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;;; Change Log:
;; 04-Aug-2012    Matthew L. Fidler  
;;    Last-Updated: Sat Aug  4 00:02:49 2012 (-0500) #20 (Matthew L. Fidler)
;;    Initial Release
;; 
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3, or
;; (at your option) any later version.
;; 
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;; 
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;;; Code:

;;;###autoload
(defun org-readme-changelog ()
  "This puts the emacs lisp change-log into the Readme.org file."
  (interactive)
  (when (buffer-file-name)
    (let ((dir (file-name-directory (buffer-file-name)))
          pt1 pt2 txt)
      (save-excursion
        (goto-char (point-min))         
        (when (re-search-forward "^[ \t]*;;; Change Log:[ \t]*$" nil t)
          (setq pt1 (point))
          (when (re-search-forward "^[ \t]*;;;;+[ \t]*$" nil t)
            (setq pt2 (match-beginning 0))
            (setq txt (buffer-substring pt1 pt2))
            (with-temp-buffer
              (insert txt)
              (goto-char (point-min))
              ;; Take out comments
              (while (re-search-forward "^[ \t]*;+ ?" nil t)
                (replace-match ""))
              (goto-char (point-min))
              (while (re-search-forward "\\([0-9][0-9]-[A-Za-z][A-Za-z][A-Za-z]-[0-9][0-9][0-9][0-9]\\)[ \t]+\\(.*\\)\n.*\n\\(\\(?:\n\\|.\\)*?\\)\n[ \t]*\\([0-9][0-9]\\)" nil t)
                (replace-match
                 (format " - %s :: %s (%s)\n %s"
                         (match-string 1)
                         (save-match-data
                           (replace-regexp-in-string
                            "~~~~" "\n    + "
                            (replace-regexp-in-string
                             "  +" " "
                             (replace-regexp-in-string
                              "\n" " "
                              (replace-regexp-in-string
                               "\n[ \t]*[*-+] +" "~~~~" (match-string 3))))))
                         (save-match-data
                           (replace-regexp-in-string
                            "[ \t]*$" ""
                            (match-string 2))) (match-string 4)) t t)
                (beginning-of-line))
              (when (re-search-forward "\\([0-9][0-9]-[A-Za-z][A-Za-z][A-Za-z]-[0-9][0-9][0-9][0-9]\\)[ \t]+\\(.*\\)\n.*\n\\(\\(?:\n\\|.\\)*\\)" nil t)
                (replace-match
                 (format " - %s :: %s (%s)" 
                         (match-string 1)
                         (save-match-data
                           (replace-regexp-in-string
                            "~~~~" "\n    + "
                            (replace-regexp-in-string
                             "  +" " "
                             (replace-regexp-in-string
                              "\n" " "
                              (replace-regexp-in-string
                               "\n[ \t]*[*-+] +" "~~~~" (match-string 3))))))
                         (save-match-data
                           (replace-regexp-in-string
                            "[ \t]*$" ""
                            (match-string 2)))) t t))
              (goto-char (point-min))
              (while (re-search-forward "`\\(.*?\\)'" nil t)
                (replace-match "=\1="))
              (goto-char (point-min))
              (insert "* History\n")
              (setq txt (buffer-substring (point-min) (point-max))))
            (with-temp-buffer
              (let ((df (directory-files dir t "^[Rr][Ee][Aa][Dd][Mm][Ee][.][Oo][Rr][Gg]$")))
                (if (= 1 (length df))
                    (setq df (nth 0 df))
                  (setq df (expand-file-name "Readme.org" dir)))
                
                (insert-file-contents df)
                (goto-char (point-min))
                (if (re-search-forward "^[*] History" nil t)
                    (progn
                      (delete-region
                       (match-beginning 0)
                       (or
                        (if (re-search-forward  "^[*] " nil t)
                            (progn
                              (- (match-beginning 0) 1))
                          nil)
                        (point-max)))
                      (insert txt))
                  (goto-char (point-max))
                  (insert txt))
                (write-file df)))))))))

(provide 'org-readme)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; org-readme.el ends here
