;; Autoformatting buffers
(local conform (require :conform))

;; Format on save with 500ms delay
(conform.setup {:format_on_save {:timeout_ms 500 :lsp_format "fallback"}
                ;; Set some useful formatters, install them by yourself ^-^
                :formatters_by_ft {:lua [:stylua]
                                   :rust [:rustfmt]
                                   :zig [:zigfmt]
                                   :javascript [:prettier]
                                   :html [:prettier]
                                   :json [:prettier]
                                   :css [:prettier]
                                   :odin [:odinfmt]
                                   :fennel [:fnlfmt]}})
