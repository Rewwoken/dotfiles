require("illuminate").configure({
	providers = {
		"lsp",
		"treesitter",
		"regex",
	},
	delay = 0,
	under_cursor = true,
	large_file_overrides = nil,
	min_count_to_highlight = 2,
	case_insensitive_regex = true,
})
