;; Harpoon plugin for quick buffer switching
(require-macros :hibiscus.vim)
(require-macros :hibiscus.core)

(local harpoon (require :harpoon))

;; Start setup, required
(harpoon:setup)

;; Some functions so you won't need to
;; use ":lua ... <CR>"
(fn harp_add []
  (let [list (harpoon:list)]
    (list:add)))

(fn harp_menu []
  (let [list (harpoon:list)]
    (harpoon.ui:toggle_quick_menu list)))

(fn harp_select [num]
  (let [list (harpoon:list)]
    (list:select num)))

;; Add bindings directly, not in "keybinds.fnl"
;; because of local "harpoon" module
(map! [:n] "<leader>a" harp_add "Add harpoon")
(map! [:n] "<leader>h" harp_menu "Show harpoons")

(map! [:n] "<M-1>" `(harp_select 1) "Select harpoon #1")
(map! [:n] "<M-2>" `(harp_select 2) "Select harpoon #2")
(map! [:n] "<M-3>" `(harp_select 3) "Select harpoon #3")
(map! [:n] "<M-4>" `(harp_select 4) "Select harpoon #4")
