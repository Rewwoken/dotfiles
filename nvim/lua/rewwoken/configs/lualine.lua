local lualine = require("lualine")

lualine.setup({
	theme = "ashes",
	sections = {
		lualine_x = { "encoding", "filetype" },
	},
})
