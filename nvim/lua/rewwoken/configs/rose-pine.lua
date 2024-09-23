require("rose-pine").setup({
	dim_inactive_windows = false,
	extend_background_behind_borders = false,
	enable = {
		terminal = true,
	},
	styles = {
		italic = false,
		transparency = true,
	},
})

vim.cmd("colorscheme rose-pine")
