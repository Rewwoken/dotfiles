local harpoon = require("harpoon")

harpoon:setup()

-- Meaining [a]dd to list
vim.keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end)

-- Meaning [q]uick list
vim.keymap.set("n", "<leader>q", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "Q", function()
	harpoon:list():select(1)
end)
vim.keymap.set("n", "W", function()
	harpoon:list():select(2)
end)
vim.keymap.set("n", "E", function()
	harpoon:list():select(3)
end)
vim.keymap.set("n", "R", function()
	harpoon:list():select(4)
end)
