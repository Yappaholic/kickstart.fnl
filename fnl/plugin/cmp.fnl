(local blink (require :blink.cmp))

(blink.setup {:keymap {:preset "default"}
              :completion {:documentation {:auto_show false}}
              :signature {:enabled true}
              :sources {:default ["lsp" "path" "snippets" "buffer"]}})

              
