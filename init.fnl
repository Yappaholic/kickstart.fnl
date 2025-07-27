;; Use hibiscus macros instead of vim.g or vim.opt
(require-macros :hibiscus.vim)
(require-macros :hibiscus.core)

;; Same as 
;; require("keybinds")
;; require("plugin")
(require :keybinds)
(require :plugin)

;; Shows number column
(set! number)
;; Sets numbers to relative
(set! relativenumber)
;; Stops words from wrapping on line end
(set! nowrap)
;; Sets indentation
(set! tabstop 4)
;; Disable temporary files for buffers
(set! swapfile false)
;; Add gutters on the left side of number column
(set! signcolumn "yes")
;; Set colorscheme instead of using ":colorscheme oxocarbon<CR>"
(vim.cmd "colorscheme oxocarbon")

