return {
	"neovim/nvim-lspconfig",
	dependencies = { "mason.nvim" },
	config = function()
		require("rewwoken.configs.lsp")
	end,
}
