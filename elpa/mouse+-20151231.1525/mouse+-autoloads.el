;;; mouse+-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "mouse+" "mouse+.el" (22356 36528 350684 919000))
;;; Generated autoloads from mouse+.el

(defface mouse-scan-lines '((t (:background "Yellow"))) "\
*Face used to temporarily highlight line at mouse position." :group (quote mouse))

(defface mouse-flash-position '((t (:background "Yellow"))) "\
*Face used to highlight mouse position temporarily." :group (quote mouse))

(autoload 'mouse-scan-lines-or-M-: "mouse+" "\
In echo area, `M-:'.  Else, highlight current line, tracking pointer.

\(fn START-EVENT)" t nil)

(autoload 'mouse-M-: "mouse+" "\
In the echo area, do `M-:'.  Otherwise, do nothing.

\(fn START-EVENT)" t nil)

(autoload 'mouse-scan-lines "mouse+" "\
Track mouse drags, highlighting the line under the pointer.

\(fn START-EVENT)" t nil)

(autoload 'mouse-flash-position-or-M-x "mouse+" "\
In the echo area, do `M-x'.  Otherwise, do `mouse-flash-position'.

\(fn START-EVENT)" t nil)

(autoload 'mouse-flash-position "mouse+" "\
Highlight the mouse position as you drag the mouse.
This must be bound to a button-down mouse event.

If you bind this to `down-mouse-2', and `mouse-2' is bound to
`mouse-yank-primary' or `mouse-yank-at-click' (defaults for Emacs 24
and earlier, respectively), then the yank occurs just before the
highlighted character.

If you want to prevent the `mouse-2' up-button yank from taking place,
perhaps because you changed your mind, you can press and hold `C-g'
while releasing the mouse button (press `mouse-2'; drag; press `C-g';
release `mouse-2'; release `C-g').

\(fn START-EVENT)" t nil)

(autoload 'mouse-tear-off-window "mouse+" "\
Create a new frame displaying buffer of window clicked on.
If window is not the only one in frame, then delete it.
Otherwise, this command effectively clones the frame and window.

\(fn EVENT)" t nil)

(autoload 'mouse-yank-secondary "mouse+" "\
Insert the secondary selection at the position clicked on.
Move point to the end of the inserted text.
If `mouse-yank-at-point' is non-nil, insert at point regardless of
 where you click.
If command `yank-secondary' is defined (see library `second-sel.el'),
 then a prefix arg N means insert the Nth most recent secondary
 selection.

\(fn CLICK ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; mouse+-autoloads.el ends here
