require("nvim-web-devicons").setup({})

require("neo-tree").setup({
	popup_border_style = "rounded",
	open_on_setup = false,
	auto_open = false,
	enable_git_status = true,
	enable_diagnostics = false,
	default_component_configs = {
		container = {
			enable_character_fade = true,
		},
		indent = {
			indent_marker = "│",
			last_indent_marker = "└",
			highlight = "NeoTreeIndentMarker",
			expander_collapsed = "",
			expander_expanded = "",
			expander_highlight = "NeoTreeExpander",
		},
		git_status = {
			symbols = {
				added = "A",
				modified = "M",
				deleted = "D",
				untracked = "U",
				renamed = "R",
				staged = "",
				unstaged = "",
			},
		},
	},
	filesystem = {
		follow_current_file = {
			enabled = true,
		},
	},
	window = {
		position = "float",
		mapping_options = {
			noremap = true,
			nowait = true,
		},
		mappings = {
			["<space>"] = {
				"toggle_node",
				nowait = true,
			},
		},
	},
	buffers = {
		follow_current_file = {
			enabled = true,
		},
	},
})
