local data_util = require("__flib__.data-util")

local shortcut_icon = "__statsx__/graphics/shortcut-icon.png"
data:extend{
  {
    type = "shortcut",
    name = "statsx-toggle-gui",
    icon = data_util.build_sprite(nil, {0,0}, shortcut_icon, 32, 2),
	--not doing these until later
    --disabled_icon = data_util.build_sprite(nil, {48,0}, shortcut_icon, 32, 2),
    --small_icon = data_util.build_sprite(nil, {0,32}, shortcut_icon, 24, 2),
    --disabled_small_icon = data_util.build_sprite(nil, {36,32}, shortcut_icon, 24, 2),
    associated_control_input = "statsx_toggle_gui",
    toggleable = true,
    action = "lua"
  }
}

