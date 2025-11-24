(import-macros {: lsp!} :macros.lsp-macros)

;; This will enable native autocompletion for supported languages
(vim.api.nvim_create_autocmd "LspAttach"
                             {:callback (fn [ev]
                                          (local client
                                                 (vim.lsp.get_client_by_id ev.data.client_id))
                                          (if (client:supports_method "textDocument/completion")
                                              (vim.lsp.completion.enable true
                                                                         client.id
                                                                         ev.buf
                                                                         {:autotrigger true})))})

(vim.cmd "set completeopt+=noselect")

;; Enable inlay hints, like types, return values, etc.
(vim.lsp.inlay_hint.enable true)

;; Add supported languages (don't forget to install Language Server Protocols)
;; To check available languages use ":help lspconfig-all"
;; C/C++
(lsp! "clangd")
;; Web
(lsp! "ts_ls")
(lsp! "html")
(lsp! "json")
(lsp! "cssls")
;; Golang
(lsp! "gopls")
;; Odin
(lsp! "ols")
;; Zig
(lsp! "zls")
;; Rust
(lsp! "rust_analyzer")
