local noice = require("noice")

noice.setup({
	lsp = {
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true,
		},
		hover = {
			silent = true,
		},
	},
})

local notify = require("notify")

notify.setup({
	fps = 144,
	stages = "fade_in_slide_out",
	timeout = 3000,
})
