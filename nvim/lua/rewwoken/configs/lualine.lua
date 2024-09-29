local lualine = require("lualine")

local clients_lsp = function()
	local bufnr = vim.api.nvim_get_current_buf()

	local clients = vim.lsp.buf_get_clients(bufnr)
	if next(clients) == nil then
		return ""
	end

	local c = {}
	for _, client in pairs(clients) do
		table.insert(c, client.name)
	end
	return "\u{f085}  " .. table.concat(c, " | ")
end

lualine.setup({
	theme = "ashes",
	sections = {
		lualine_c = {
			{
				"filename",
				path = 1,
			},
		},
		lualine_x = { clients_lsp, "filetype" },
	},
})
