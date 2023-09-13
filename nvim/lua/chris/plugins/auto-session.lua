return {
	"rmagatti/auto-session",
	config = function()
		local auto_session = require("auto-session")

		auto_session.setup()

		local keymap = vim.keymap

		keymap.set(
			"n",
			"<leader>wr",
			"<cmd>SessionRestore<CR>",
			{ desc = "Restore session for current working directory" }
		)
		keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root directory" })
	end,
}
