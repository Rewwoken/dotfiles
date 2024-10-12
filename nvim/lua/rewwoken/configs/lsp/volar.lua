local lsp = require("lspconfig")

local ts_sdk = "/home/rewwoken/.nvm/versions/node/v20.18.0/lib/node_modules/typescript/lib"

lsp.volar.setup({
	filetypes = { "vue" },
	init_options = {
		typescript = {
			tsdk = ts_sdk,
		},
	},
})
