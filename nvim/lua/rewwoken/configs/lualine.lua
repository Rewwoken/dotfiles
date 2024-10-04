local lualine = require("lualine")

local client_format = {
	ts_ls = "TS",
	lua_ls = "Lua",
	tailwindcss = "TW",
	eslint = "ESLint",
	emmet_language_server = "Emmet",
	jsonls = "JSON",
}

local clients_lsp = function()
	local clients = vim.lsp.get_clients()
	if next(clients) == nil then
		return ""
	end

	local client_names = {}
	for _, client in pairs(clients) do
		local formatted_name = client_format[client.name] or client.name
		table.insert(client_names, formatted_name)
	end

	return "\u{f085}  " .. table.concat(client_names, " | ")
end

lualine.setup({
	sections = {
		lualine_c = {
			{
				"filename",
				path = 1,
			},
		},
		lualine_x = {
			clients_lsp,
			{ "filetype", icon_only = true },
		},
	},
})
