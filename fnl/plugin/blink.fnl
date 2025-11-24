;; This is autocompletion engine 
;; with "blazingly fast" search
(local blink (require :blink.cmp))

(blink.setup {:keymap {:preset "default"
                      "<C-o>" ["select_and_accept"]}
              ;; Set default keymaps 
              ;; (<C-n>/<C-p> to scroll, <C-o> to accept, <C-e> to cancel)
              ;;
              ;; Set sources for the completion (searches lsp, filesystem path,
              ;; custom snippets and text inside the buffer) 
              :sources {:default [:lsp :path :snippets :buffer]}
              ;; Use rust fuzzy finder, requires you to build it with rust nightly
              ;; or just set it to "lua" instead of "prefer_rust_with_warning"
              :fuzzy {:implementation "prefer_rust_with_warning"}})
