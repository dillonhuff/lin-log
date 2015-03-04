;; lin-log state variables

(defvar lin-log-home-path "~/lin-log/")
(defvar current-log-name "")
(defvar current-section-name "")
(defvar lin-log-is-active nil)
(defvar current-log-entry-time nil)

(defun time-struct ()
  (list (float-time) (current-time-string) (current-time-zone)))

(defun time-string (time-str)
  (cadr time-str))

(defun seconds-since-epoch (time-str)
  (car time-str))

(defun time-zone (time-str)
  (cadr (cdr time-str)))

(defun time-log-file-path ()
  (concat lin-log-home-path "time_log.el"))

(defun start-log (log-name section-name)
  (interactive "sLog name:\nsStarting section name:")
  (progn
    (setq current-log-name log-name)
    (setq current-section-name section-name)
    (setq lin-log-is-active t)
    (setq current-log-enty-time (get-time-struct))))
