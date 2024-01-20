return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"asm_lsp",
				"clangd",
				"cssls",
				"emmet_ls",
				"html",
				"jsonls",
				"lua_ls",
				"pylsp",
				"pyright",
				"rust_analyzer",
				"slint_lsp",
				"tailwindcss",
				"tsserver",
			},
			automatic_installation = true,
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"black",
				"clang-format",
				"eslint_d",
				"prettier",
				"stylua",
			},
		})
	end,
}
