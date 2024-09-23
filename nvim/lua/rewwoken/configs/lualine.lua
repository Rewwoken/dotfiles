local lualine = require("lualine")

lualine.setup({
	options = {
		theme = "rose-pine",
	},
	sections = {
		lualine_c = {
			{
				"harpoon2",
				icon = "",
				indicators = { "q", "w", "e", "r" },
				active_indicators = { "Q", "W", "E", "R" },
				color_active = { fg = "#eb6f92" },
				_separator = " ",
				no_harpoon = "Harpoon not loaded",
			},
		},
		lualine_x = { "encoding", "filetype" },
	},
})
