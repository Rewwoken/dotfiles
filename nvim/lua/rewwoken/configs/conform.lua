local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		css = { "prettierd", "prettier", stop_after_first = true },
		html = { "prettierd", "prettier", stop_after_first = true },
		javascript = { "prettierd", "prettier", stop_after_first = true },
		typescript = { "prettierd", "prettier", stop_after_first = true },
		vue = { "prettierd", "prettier", stop_after_first = true },
	},
	format_on_save = {
		lsp_format = "fallback",
		timeout_ms = 500,
	},
})

vim.keymap.set({ "n", "v" }, "<leader>l", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	})
end, { desc = "Format file or range (in visual mode)" })
