return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = {
			"JoosepAlviste/nvim-ts-context-commentstring",
			"windwp/nvim-ts-autotag",
		},
		config = function()
			local treesitter = require("nvim-treesitter.configs")

			treesitter.setup({
				highlight = {
					enable = true,
					enable_close = true,
					enable_close_on_slash = true,
					enable_rename = true,
				},
				indent = { enable = true },
				autotag = { enable = true },
				ensure_installed = {
					"comment",
					"css",
					"dart",
					"dockerfile",
					"gitignore",
					"html",
					"javascript",
					"jsdoc",
					"json",
					"lua",
					"markdown",
					"markdown_inline",
					"regex",
					"rust",
					"scss",
					"tsx",
					"typescript",
					"vim",
					"vue",
					"yaml",
				},
				context_commentstring = {
					enable = true,
					enable_autocmd = false,
				},
				auto_install = true,
			})
		end,
	},
}
