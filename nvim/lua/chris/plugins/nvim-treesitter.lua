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
			require("ts_context_commentstring").setup({
				enable_autocmd = false,
				languages = {
					typescript = "// %s",
				},
			})

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
					"slint",
					"tsx",
					"typescript",
					"vim",
					"vue",
					"yaml",
				},
				auto_install = true,
			})
		end,
	},
}
