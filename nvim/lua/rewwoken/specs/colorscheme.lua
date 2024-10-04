local function setup_colorscheme(scheme_name, options)
	local scheme = require(scheme_name)
	scheme.setup(options)

	require("rewwoken.configs.colorscheme")
end

return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		enabled = false,
		config = function()
			setup_colorscheme("gruvbox", {
				italic = {
					strings = false,
					emphasis = false,
					comments = false,
					operators = false,
					folds = false,
				},
			})
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			setup_colorscheme("catppuccin", {
				flavour = "mocha",
				no_italic = true,
				term_colors = true,
				integrations = {
					telescope = {
						enabled = true,
					},
				},
			})
		end,
	},
}
