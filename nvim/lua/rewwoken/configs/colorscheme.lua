-- Require the gruvbox colorscheme
local gruvbox = require("gruvbox")

-- Configure the gruvbox colorscheme
gruvbox.setup({
	italic = {
		strings = false,
		emphasis = true,
		comments = true,
		operators = false,
		folds = true,
	},
})

-- Set the colorscheme to gruvbox
vim.cmd("colorscheme gruvbox")

-- Configure the statuscolumn format
vim.opt.statuscolumn = "%s%=%{v:relnum?v:relnum:v:lnum} "

-- Highlight only cursorline foreground
vim.cmd("highlight CursorLineNr guibg=NONE")

-- Set the background to dark for better contrast
vim.o.background = "dark"

-- Clear existing highlight for SignColumn
vim.cmd("highlight clear SignColumn")

-- Function to get foreground color from highlight group
local function get_fg_from_hl(group)
	local hl = vim.api.nvim_get_hl(0, { name = group, link = false }) -- Get highlight group info
	return hl.fg and string.format("#%06x", hl.fg) or nil -- Return the fg color in HEX format, or nil
end

-- Retrieve colors for diagnostic signs
local diagnostic_signs = {
	Error = get_fg_from_hl("DiagnosticSignError"),
	Warn = get_fg_from_hl("DiagnosticSignWarn"),
	Info = get_fg_from_hl("DiagnosticSignInfo"),
	Hint = get_fg_from_hl("DiagnosticSignHint"),
}

-- Set highlight for SignColumn
vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })

-- Set highlights for diagnostic signs, making backgrounds transparent
vim.api.nvim_set_hl(0, "DiagnosticSignError", { bg = "NONE", fg = diagnostic_signs.Error })
vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { bg = "NONE", fg = diagnostic_signs.Warn })
vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { bg = "NONE", fg = diagnostic_signs.Info })
vim.api.nvim_set_hl(0, "DiagnosticSignHint", { bg = "NONE", fg = diagnostic_signs.Hint })

-- Get the background color of the Normal highlight group
local hl = vim.api.nvim_get_hl(0, { name = "Normal", link = false })
local bg_color = hl.bg

-- If a background color exists, apply it to specific UI elements
if bg_color then
	bg_color = string.format("#%06x", bg_color) -- Convert background color to HEX format

	-- Set the background color for various floating UI elements
	vim.cmd(string.format("highlight FloatBorder guibg=%s", bg_color))
	vim.cmd(string.format("highlight NoiceCmdlinePopupBorder guibg=%s", bg_color))
	vim.cmd(string.format("highlight NoiceCmdlineIcon guibg=%s", bg_color))
	vim.cmd(string.format("highlight NeotreeFloatTitle guibg=%s", bg_color))
end
