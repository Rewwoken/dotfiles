vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.shortmess:append("c")

local cmp = require("cmp")
local compare = cmp.config.compare

cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
		{ name = "path" },
	},
	mapping = {
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
		["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
		["<C-f>"] = cmp.mapping.scroll_docs(-4), -- scroll up
		["<C-v>"] = cmp.mapping.scroll_docs(4), -- scroll down
		["<Tab>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		}),
	},
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	comparators = {
		compare.offset,
		compare.exact,
		compare.recently_used,
		compare.locality,
		compare.kind,
		compare.length,
		compare.order,
	},
})
