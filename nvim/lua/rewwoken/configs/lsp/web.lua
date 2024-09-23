local lsp = require("lspconfig")

lsp.html.setup({})
lsp.cssls.setup({})
lsp.emmet_ls.setup({
	filetypes = { "html", "css", "sass", "scss" },
})
lsp.eslint.setup({})

