;; Same as in init.fnl
(require-macros :hibiscus.core)
(require-macros :hibiscus.vim)

;; Set leader key for keybindings
(set vim.g.mapleader " ")

;; Set keybindings with "map!" macro like this:
;; (map! [list of modes] "keybinding" function "keybinding description")

;; LSP
(map! [:n] "<leader>lf" vim.lsp.buf.format "Format buffer")
(map! [:n] "<leader>k" vim.lsp.buf.hover "Hover info")
(map! [:n] "<leader>r" vim.lsp.buf.rename "Rename references")

(map! [:n] "gd" vim.lsp.buf.definition "Go to definition")
(map! [:n] "gr" vim.lsp.buf.references "Go to references")

;; Trouble for diagnostics popup
(map! [:n] "<leader>dd" ":Trouble diagnostics toggle<CR>" "Open Diagnostics")

;; Miscellaneous

;; Modern file explorer instead of "Ex"
(map! [:n] "<leader>p." ":Oil<CR>" "Open file explorer")
;; Git GUI interface inside Neovim
(map! [:n] "<leader>gg" ":Neogit<CR>" "Open git")

;; A lot of pickers to pick *pun intended*
(map! [:n] "<leader>pf" ":Pick files<CR>" "Pick files")
(map! [:n] "<leader>ph" ":Pick help<CR>" "Pick help")
(map! [:n] "<leader>pg" ":Pick grep tool='rg'<CR>" "Pick grep")

;; Removes highlighting after the search with "/" or "?"
(map! [:n] "<C-g>" ":noh<CR>" "Remove highlighting")
