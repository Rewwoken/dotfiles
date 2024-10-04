return {
	"luckasRanarison/tailwind-tools.nvim",
	name = "tailwind-tools",
	build = ":UpdateRemotePlugins",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-telescope/telescope.nvim", -- optional
		"neovim/nvim-lspconfig", -- optional
	},
	config = function()
		require("tailwind-tools").setup({
			server = {
				override = true, -- setup the server from the plugin if true
			},
		})
	end,
}
