local ts = require("nvim-treesitter.configs")

ts.setup({
	ensure_installed = {
		-- Your own:
		"html",
		"css",
		"javascript",
		"typescript",
		"vue",
		"json",
		-- Required:
		"c",
		"lua",
		"vim",
		"vimdoc",
		"query",
		"markdown",
		"markdown_inline",
		"regex",
		"bash",
	},
	sync_install = false,
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
})
