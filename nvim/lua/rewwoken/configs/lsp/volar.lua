local lsp = require("lspconfig")
local ts_sdk = "/home/rewwoken/.nvm/versions/node/v20.17.0/lib/node_modules/typescript/lib"

lsp.volar.setup({
	filetypes = {
		"typescript",
		"javascript",
		"javascriptreact",
		"typescriptreact",
		"vue",
		"json",
	},
	init_options = {
		typescript = {
			tsdk = ts_sdk,
		},
	},
})
