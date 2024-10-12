local lsp = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local ts_plugin = "/home/rewwoken/.nvm/versions/node/v20.18.0/lib/node_modules/@vue/typescript-plugin"

lsp.ts_ls.setup({
	capabilities = capabilities,
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = ts_plugin,
				languages = {
					"javascript",
					"javascriptreact",
					"typescriptreact",
					"typescript",
					"vue",
				},
			},
		},
	},
	filetypes = {
		"javascript",
		"javascriptreact",
		"typescriptreact",
		"typescript",
		"vue",
	},
})
