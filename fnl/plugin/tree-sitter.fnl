;; Setup tree-sitter grammars for sweet and beatiful highlighting
(local tree-sitter-config (require :nvim-treesitter.configs))
(local tree-sitter-install (require :nvim-treesitter.install))

;; Prefer downloading grammars from github 
;; instead of using "curl", requires "git"
(set tree-sitter-install.prefer_git true)

;; Setup tree-sitter
(tree-sitter-config.setup {
						  ;; Automatically install grammars 
						  ;; when opening new file extensions
						  :auto_install true
						  ;; Preinstall some grammars
						  :ensure_installed 
										  [:c 
										  :lua 
										  :zig 
										  :json 
										  :javascript 
										  :typescript]
						  ;; Enable buffer highlighting
				          :highlight 
								   {:enable true
								    :additional_vim_regex_highlighting false}})
