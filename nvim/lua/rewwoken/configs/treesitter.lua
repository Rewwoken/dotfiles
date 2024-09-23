local ts = require("nvim-treesitter")

ts.setup({
	ensure_installed = {
		-- Your own:
		"html",
		"css",
		"javascript",
		"typescript",
		"vue",
		-- Required:
		"c",
		"lua",
		"vim",
		"vimdoc",
		"query",
		"markdown",
		"markdown_inline",
	},
	sync_install = false,
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
})
