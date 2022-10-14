require("scripts.init") -- defines initialize_player

-- I am learning how to mod GUIs by inspecting https://github.com/Wiwiweb/FactorioMilestones

-- Returns the gui for the player. Initializes the gui if it does not exist
local function ensure_gui(player)
	if not global.players[player.index] then
        initialize_player(player)
    end

	return global.players[player.index].gui
end

local function open_gui(player)
	ensure_gui(player).visible = true
end

local function close_gui(player)
	ensure_gui(player).visible = false
end

local function is_gui_visible(player)
	return ensure_gui(player).visible
end

local function toggle_gui(player)
	local visible = is_gui_visible(player)

	if visible == false then
		open_gui(player)
	else
		close_gui(player)
	end
end

script.on_event(defines.events.on_lua_shortcut, function(event)
    if event.prototype_name == "statsx-toggle-gui" then
        local player = game.get_player(event.player_index)
        toggle_gui(player)
    end
end)

-- create GUI for players when the save file is created.
-- might not be needed?
script.on_init(function()
	global.players = {}
	-- initialize GUI for all players
	-- likely issues:
	-- - we don't init for new players as they connect
	-- - we don't clear for players that leave
   for _, player in pairs(game.players) do
        initialize_player(player)
    end
end)

