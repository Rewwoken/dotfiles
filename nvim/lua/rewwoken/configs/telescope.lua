local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({})
telescope.load_extension("ui-select")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
