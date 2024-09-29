return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		-- Core and sources
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		-- Snippet engine
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		-- Pretty pictograms
		"onsails/lspkind.nvim",
	},
	lazy = false,
	config = function()
		require("rewwoken.configs.cmp")
	end,
}
