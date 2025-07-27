-- Initial setup with native Neovim package manager (0.12+)
vim.pack.add({
		"https://github.com/udayvir-singh/tangerine.nvim",
		"https://github.com/udayvir-singh/hibiscus.nvim",
		"https://github.com/nvim-tree/nvim-web-devicons",
		"https://github.com/nyoom-engineering/oxocarbon.nvim",
		"https://github.com/neovim/nvim-lspconfig",
		"https://github.com/nvim-treesitter/nvim-treesitter",
		"https://github.com/stevearc/oil.nvim",
		{
		 src = "https://github.com/saghen/blink.cmp", 
		 version = "v1.6.0"
		},
		"https://github.com/NeogitOrg/neogit",
		"https://github.com/nvim-lua/plenary.nvim",
		"https://github.com/echasnovski/mini.pick",
		"https://github.com/echasnovski/mini-git",
		"https://github.com/echasnovski/mini.diff",
		"https://github.com/echasnovski/mini.statusline",
		"https://github.com/echasnovski/mini.pairs",
		"https://github.com/folke/trouble.nvim",
		{
		 src = "https://github.com/ThePrimeagen/harpoon",
		 version = "harpoon2"
		},
})

-- Setup fennel compilation
require "tangerine".setup({

	-- save fnl output in a separate dir, it gets automatically added to package.path
	target = vim.fn.stdpath [[data]] .. "/tangerine",

	-- compile files in &rtp, check ":help runtimepath"
	rtpdirs = {
		"plugin",
		"colors",
	},

	compiler = {
		-- disable popup showing compiled files
		verbose = false,

		-- compile every time you change fennel files or on entering vim
		hooks = {"onsave", "oninit"}
	}

})
