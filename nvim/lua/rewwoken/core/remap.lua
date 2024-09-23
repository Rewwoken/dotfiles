local km = vim.keymap
vim.g.mapleader = " "

-- NeoTree
km.set("n", "<leader>e", ":Neotree float focus<CR>")
km.set("n", "<leader>o", ":Neotree float git_status<CR>")

-- Save on CTRL + S
km.set("n", "<C-s>", ":w<CR>", {
	noremap = true,
	silent = true,
})

-- Move selected code in visual mode
km.set("v", "J", ":m '>+1<CR>gv=gv")
km.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep C + d/u movements in the center
km.set("n", "<C-u>", "<C-u>zz")
km.set("n", "<C-d>", "<C-d>zz")

-- Keep search in the center
km.set("n", "n", "nzzzv")
km.set("n", "N", "Nzzzv")

-- System clipboard
km.set({ "n", "v" }, "<leader>y", [["+y]])
km.set("n", "<leader>Y", [["+Y]])

-- Replace the word under the cursor
km.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- LSP
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		local opts = {
			buffer = ev.buf,
			silent = true,
		}

		opts.desc = "Show LSP references"
		km.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

		opts.desc = "Show LSP definitions"
		km.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions

		opts.desc = "Show LSP type definitions"
		km.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

		opts.desc = "See available code actions"
		km.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

		opts.desc = "Smart rename"
		km.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

		opts.desc = "Show line diagnostics"
		km.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

		opts.desc = "Show documentation for what is under cursor"
		km.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

		opts.desc = "Restart LSP"
		km.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
	end,
})
