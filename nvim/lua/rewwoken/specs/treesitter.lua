return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
    require("rewwoken.configs.treesitter")
  end,
}
