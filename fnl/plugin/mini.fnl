;; Some useful additions to the editor

;; Add nice statusline with sensible defaults
(local statusline (require :mini.statusline))
;; Add picker for live grepping, searching help and files
(local pick (require :mini.pick))
;; Add bracket and braces pairs automatically
(local pairs (require :mini.pairs))
;; Add some git functionality, specifically for the statusline
(local git (require :mini.git))
;; Same as for git, but with diff info
(local diff (require :mini.diff))

;; Since all those plugins have sensible defaults,
;; just call "setup" without any options
(git.setup {})
(diff.setup {})
(pick.setup {})
(pairs.setup {})
(statusline.setup {})
