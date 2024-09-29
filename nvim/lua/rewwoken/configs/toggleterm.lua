local toggleterm = require("toggleterm")

toggleterm.setup({
	open_mapping = [[<c-\>]],
	shading_factor = 1,
	persist_size = true,
	autochdir = true,
	direction = "float",
	float_opts = {
		border = "curved",
	},
})
