return {
	"rmagatti/auto-session",
	config = function()
		local auto_session = require("auto-session")

		auto_session.setup({
			auto_restore_enabled = true,
			cwd_change_handling = {
				post_cwd_changed_hook = function()
					require("lualine").refresh()
				end,
			},
		})
	end,
}
