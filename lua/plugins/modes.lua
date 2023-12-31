return {
	'mvllow/modes.nvim',
	tag = 'v0.2.0',
	event = 'VeryLazy',
	config = function()
		require('modes').setup({
		  colors = {
				copy = "#f5cb4c", --#f5c359 (default color)
				delete = "#cf3636", --#db7b7b, #d14f4f (none of these colors are default!)
				insert = "#66ada7",  --#78ccc5 (default color)
				visual = "#9745be",
			},
		  line_opacity = 0.25,
		  set_cursorline = true,
		  set_cursor = true
		})
	end
}
