;; Miscellaneous setups

;; Git GUI inside Neovim
(local neogit (require :neogit))
(neogit.setup {})

;; Diagnostics GUI
(local trouble (require :trouble))
(trouble.setup {})

;; Markdown support
;;(local render-markdown (require :render-markdown))
;; Add completion support for markdown in blink
;;(render-markdown.setup {:completions {:blink {:enabled true}}})

(local paredit (require :nvim-paredit))
(paredit.setup {})

(local orgmode (require :orgmode))
(orgmode.setup {})
