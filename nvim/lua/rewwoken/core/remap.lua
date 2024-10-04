vim.g.mapleader = " "

local km = vim.keymap
local opts = { silent = true, noremap = true }

-- NeoTree
km.set("n", "<leader>e", ":Neotree reveal<CR>", opts)

-- Save on CTRL + S
km.set("n", "<C-s>", ":w<CR>", opts)

-- Move selected code in visual mode
km.set("v", "J", ":m '>+1<CR>gv=gv", opts)
km.set("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Keep C + d/u movements in the center
km.set("n", "<C-u>", "<C-u>zz", opts)
km.set("n", "<C-d>", "<C-d>zz", opts)

-- Keep search in the center
km.set("n", "n", "nzzzv", opts)
km.set("n", "N", "Nzzzv", opts)

-- System clipboard
km.set({ "n", "v" }, "<leader>y", [["+y]], opts)
km.set("n", "<leader>Y", [["+Y]], opts)

-- Replace the word under the cursor
km.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- LSP
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		local optsWithBuf = {
			buffer = ev.buf,
			silent = true,
		}

		optsWithBuf.desc = "Show LSP references"
		km.set("n", "gr", "<cmd>Telescope lsp_references<CR>", optsWithBuf) -- show definition, references

		optsWithBuf.desc = "Show LSP definitions"
		km.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", optsWithBuf) -- show lsp definitions

		optsWithBuf.desc = "Show LSP type definitions"
		km.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", optsWithBuf) -- show lsp type definitions

		optsWithBuf.desc = "See available code actions"
		km.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, optsWithBuf) -- see available code actions, in visual mode will apply to selection

		optsWithBuf.desc = "Smart rename"
		km.set("n", "<leader>rn", vim.lsp.buf.rename, optsWithBuf) -- smart rename

		optsWithBuf.desc = "Show documentation for what is under cursor"
		km.set("n", "<leader>d", vim.lsp.buf.hover, optsWithBuf) -- show documentation for what is under cursor

		optsWithBuf.desc = "Restart LSP"
		km.set("n", "<leader>rs", ":LspRestart<CR>", optsWithBuf) -- mapping to restart lsp if necessary
	end,
})
