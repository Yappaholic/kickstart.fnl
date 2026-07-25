(require-macros :hibiscus.vim)
(require-macros :hibiscus.core)
(require-macros :macros.lsp-macros)
;(import-macros {: lsp!} :macros.lsp-macros)
; (import-macros {: lsps!} :macros.lsp-macros)

;; This will enable native autocompletion for supported languages
(vim.api.nvim_create_autocmd :LspAttach
                             {:callback (fn [ev]
                                          (local client
                                                 (vim.lsp.get_client_by_id ev.data.client_id))
                                          (if (client:supports_method :textDocument/completion)
                                              (vim.lsp.completion.enable false
                                                                         client.id
                                                                         ev.buf
                                                                         {:autotrigger true})))})

(vim.cmd "set completeopt+=noselect")

;; Enable inlay hints, like types, return values, etc.
(vim.lsp.inlay_hint.enable true)

;; Add supported languages (don't forget to install Language Server Protocols)
;; To check available languages use ":help lspconfig-all"
(vim.lsp.config :nixd {:settings {:nixd {:formatting {:command [:alejandra]}}}})
(lsps! [;; C/C++
        :clangd
        ;; Web
        :ts_ls
        :html
        :json
        :ccls
        ;; Golang
        :gopls
        ;; Odin
        :ols
        ;; Zig
        :zls
        ;; Nix
        :nixd
        ;; Rust
        :rust_analyzer
        ;; Lua
        :lua_ls
        ;; Experimental Org mode support
        :org])
