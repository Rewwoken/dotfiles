require("mason-lspconfig").setup({
	ensure_installed = {
		"html",
		"cssls",
		"ts_ls",
		"volar",
		"emmet_language_server",
		"tailwindcss",
		"eslint",
		"jsonls",
		"clangd",
		"lua_ls",
	},
})
