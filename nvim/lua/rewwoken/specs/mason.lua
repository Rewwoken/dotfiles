return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("rewwoken.configs.mason.main")
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("rewwoken.configs.mason.tool-installer")
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("rewwoken.configs.mason.lsp-config")
		end,
	},
}
