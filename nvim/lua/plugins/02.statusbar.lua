return {
	{
		"nvim-tree/nvim-web-devicons"
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require( "lualine" ).setup({
				options = { theme = "nightfly" }
			})
		end
	}
}
-- THEMES
-- dracula
-- iceberg_dark
-- iceberg_light
-- nightfly
-- 16color
