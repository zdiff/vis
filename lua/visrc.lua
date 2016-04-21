require("utils")

vis.events = {}
vis.events.win_open = function(win)
	-- test.in file passed to vis
	in_file = win.file.name
	-- use the corresponding test.lua file
	lua_file = string.gsub(in_file, '%.in$', '')
	require(lua_file)
	vis:command('q!')
end
