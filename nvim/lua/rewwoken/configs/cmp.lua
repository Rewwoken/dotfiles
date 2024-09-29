vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.shortmess:append("c")

local cmp = require("cmp")

local compare = cmp.config.compare
local types = require("cmp.types")
local str = require("cmp.utils.str")

local lspkind = require("lspkind")
lspkind.init({})

cmp.setup({
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "path" },
		{ name = "luasnip" },
		{ name = "buffer", max_item_count = 1 },
	}),
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
	formatting = {
		format = lspkind.cmp_format({
			mode = "symbol_text",
			maxwidth = 50,
			ellipsis_char = "...",
			show_labelDetails = true,
			before = function(entry, vim_item)
				vim_item.menu = ({
					buffer = "[Buffer]",
					nvim_lsp = "[LSP]",
					path = "[Path]",
				})[entry.source.name]

				return vim_item
			end,
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
