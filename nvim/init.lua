-- Required:
-- sudo apt install build-essential | cc executable
-- sudo apt install ripgrep         | rg executable
-- sudo apt install fd-find         | fd executable
-- sudo apt install unzip           | unzip executable
-- sudo apt install lazygit         | lazygit executable
-- sudo apt install clang-format    | clang formatter
-- sudo apt install xclip           | clipboard
-- sudo apt install python3.10-venv | ubuntu only
-- npm i -g tree-sitter-cli         | tree-sitter cli

require("rewwoken.core")
require("rewwoken.lazy")

-- vim.api.nvim_create_autocmd("BufWritePost", {
-- 	pattern = { "*.ts", "*.js", "*.vue" },
-- 	command = "EslintFixAll",
-- })
