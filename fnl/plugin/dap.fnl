(require-macros :hibiscus.vim)
(require-macros :hibiscus.core)

;;(local dap-lldb (require :dap-lldb))
(local dap (require :dap))
(local dap-view (require :dap-view))

;;(dap-lldb.setup {:codelldb_path "/opt/codelldb/extension/adapter/codelldb"})
(dap-view.setup {})

(set dap.adapters.lldb {:type "executable" :command "lldb-dap" :name "lldb"})

(set dap.adapters.codelldb
     {:type "executable" :command "/opt/codelldb/extension/adapter/codelldb"})

(local lldb {:name "Launch lldb"
             :type "lldb"
             :request "launch"
             :program (fn []
                        (vim.fn.input "Path to executable"
                                      (.. (vim.fn.getcwd) "/") "file"))
             :cwd "${workspaceFolder}"
             :stopOnEntry false
             :args {}
             :runInTerminal false})

(set dap.configurations {:rust [lldb] :cpp [lldb] :c [lldb]})

(map! [:n] "<leader>db" `(dap.toggle_breakpoint) "Toggle breakpoint")
(map! [:n] "<leader>dr" `(dap.continue) "Continue")
