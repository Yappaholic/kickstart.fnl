-- Initial setup with native Neovim package manager (0.12+)
vim.pack.add({
        -- Fennel packages
		"https://github.com/udayvir-singh/tangerine.nvim",
		"https://github.com/udayvir-singh/hibiscus.nvim",
        -- Nerd font icons
		"https://github.com/nvim-tree/nvim-web-devicons",
        -- Colorscheme
		"https://github.com/nyoom-engineering/oxocarbon.nvim",
        -- Premade LSP configurations
		"https://github.com/neovim/nvim-lspconfig",
        -- Tree-sitter integration
		"https://github.com/nvim-treesitter/nvim-treesitter",
        -- Modern file explorer
		"https://github.com/stevearc/oil.nvim",
        -- Completion engine
		{
		 src = "https://github.com/saghen/blink.cmp", 
		 version = "v1.6.0"
		},
        -- Git GUI inside Neovim
		"https://github.com/NeogitOrg/neogit",
		"https://github.com/nvim-lua/plenary.nvim",
        -- Find files, text and much more
		"https://github.com/echasnovski/mini.pick",
        -- Statusline with sensible defaults
		"https://github.com/echasnovski/mini-git",
		"https://github.com/echasnovski/mini.diff",
		"https://github.com/echasnovski/mini.statusline",
        -- Add pairs for brackets, braces, etc.
		"https://github.com/echasnovski/mini.pairs",
        -- Show diagnostics
		"https://github.com/folke/trouble.nvim",
        -- Make previewing markdown beautiful
		"https://github.com/MeanderingProgrammer/render-markdown.nvim",
        -- Seamless buffer switching
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
