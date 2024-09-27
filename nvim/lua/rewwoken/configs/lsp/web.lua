local lsp = require("lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp.html.setup({
	capabilities = capabilities,
})
lsp.cssls.setup({
	capabilities = capabilities,
})
lsp.emmet_ls.setup({
	capabilities = capabilities,
	filetypes = { "html", "css", "sass", "scss" },
})
lsp.jsonls.setup({
	capabilities = capabilities,
})
lsp.eslint.setup({})
