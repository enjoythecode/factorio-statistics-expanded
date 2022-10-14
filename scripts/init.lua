function initialize_player(player)
	game.print("initializing statsx for player")

	local tabbed_pane = player.gui.center.add{type="tabbed-pane", visible="false"}
	local tab = tabbed_pane.add{type="tab", caption="StatsX"}
	-- currently, the label is not saved in the save file. we want to display
	-- the content dynamically anyway, so this is fine.
	-- what this means is that the label will show across all toggles in the
	-- instance of the game where the mod was loaded, but not in subsequent
	-- instances (ie after loading the game)
	local label = tabbed_pane.add{type="label", caption="This is my mod!"}
	tabbed_pane.add_tab(tab, label)

	global.players[player.index] = {
		gui = tabbed_pane
	}
end
