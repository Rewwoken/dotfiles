require("rewwoken.configs.lsp.ts")
require("rewwoken.configs.lsp.volar")
require("rewwoken.configs.lsp.eslint")
require("rewwoken.configs.lsp.web")
require("rewwoken.configs.lsp.lua")
require("rewwoken.configs.lsp.clangd")

local diagnostic_icons = { Error = "", Warn = "", Hint = "", Info = "" }

for type, icon in pairs(diagnostic_icons) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
