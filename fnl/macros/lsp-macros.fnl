;; Simple function to save some typing
(fn lsp! [name]
  `(vim.lsp.enable ,name))

(fn lsps! [names]
  `(each [_# name# (ipairs ,names)]
     (vim.lsp.enable name#)))

{: lsp! : lsps!}
