return {
	{
		"nvim-tree/nvim-web-devicons"
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require( "lualine" ).setup({
				options = { theme = "catppuccin" }
			})
		end
	}
}
