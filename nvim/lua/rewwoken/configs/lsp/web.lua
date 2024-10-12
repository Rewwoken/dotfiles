local lsp = require("lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()

lsp.html.setup({
	capabilities = capabilities,
})
lsp.cssls.setup({
	capabilities = capabilities,
})
lsp.jsonls.setup({
	capabilities = capabilities,
})
lsp.emmet_language_server.setup({
	capabilities = capabilities,
	filetypes = {
		"html",
		"css",
		"javascriptreact",
		"typescriptreact",
		"sass",
		"scss",
	},
})
