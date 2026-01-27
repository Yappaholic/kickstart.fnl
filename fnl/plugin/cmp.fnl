(local cmp (require :cmp))

(cmp.setup {:snippet {:expand (lambda [args] (vim.snippet.expand args.body))}
            :mapping (cmp.mapping.preset.insert {:<C-b> (lambda [] (cmp.mapping.scroll_docs -4))
                                                 :<C-f> (lambda [] (cmp.mapping.scroll_docs 4))
                                                 :<C-y> (lambda [] (cmp.mapping.confirm {:select true}))
                                                 :<C-c> (lambda [] (cmp.mapping.abort))})
            :sources (cmp.config.sources [{:name "nvim_lsp"}
                                          {:name "buffer"}
                                          {:name "cmdline"}
                                          {:name "conjure"}
                                          {:name "path"}])
                                          
            :window {:completion (cmp.config.window.bordered)
                     :documentation (cmp.config.window.bordered)}})
