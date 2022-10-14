local function toggle_gui(player)
	game.print({"statsx.statsx_debug_filler", "got to toggle_gui"})
	game.print("your locale? didn't ask don't care")
end

script.on_event(defines.events.on_lua_shortcut, function(event)
    if event.prototype_name == "statsx-toggle-gui" then
        local player = game.get_player(event.player_index)
        toggle_gui(player)
    end
end)

