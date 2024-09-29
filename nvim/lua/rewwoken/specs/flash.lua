return {
	"folke/flash.nvim",
	event = "VeryLazy",
	config = function()
		require("flash").setup({})

    -- stylua: ignore
		vim.keymap.set({ "n", "x", "o" }, "f", function() require("flash").jump() end)
	end,
}
