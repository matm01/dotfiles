---@module 'hl'

--##################
--## MY PROGRAMS ###
--##################

local terminal = "kitty"
local fileManager = "nautilus"
local menu = "wofi --prompt='search app' -i"
local browser = "zen-browser"

--##################
--## KEYBINDINGS ###
--##################

hl.bind("SUPER + RETURN", hl.dsp.exec_cmd("kitty"), { description = "Open kitty" })
hl.bind("SUPER + Q", hl.dsp.window.close(), { description = "close window" })
hl.bind("SUPER + L", hl.dsp.exec_cmd("hyprlock"), { description = "lock screen" })
hl.bind("SUPER + F", hl.dsp.window.fullscreen(), { description = "fullscreen" })
hl.bind("SUPER + SHIFT + F", hl.dsp.exec_cmd("nautilus"), { description = "Open file manager" })
hl.bind("SUPER + SHIFT + B", hl.dsp.exec_cmd("zen-browser"), { description = "open zen browser" })
hl.bind("SUPER + SHIFT + O", hl.dsp.exec_cmd("obsidian"), { description = "obsidian" })
hl.bind("SUPER + SHIFT + P", hl.dsp.exec_cmd("firefox -P Default User -no-remote"), { description = "herbert" })
hl.bind("SUPER + SHIFT + E", hl.dsp.exec_cmd("betterbird"), { description = "betterbird" })
hl.bind("SUPER + SHIFT + C", hl.dsp.exec_cmd("gnome-calculator"), { description = "Calculator" })
hl.bind(
	"SUPER + SHIFT + ALT + B",
	hl.dsp.exec_cmd("zen-browser --private-window"),
	{ description = "Open Zen browser in private window" }
)
hl.bind("SUPER + ESCAPE", hl.dsp.exec_cmd(os.getenv("HOME") .. "/scripts/powermenu"), { description = "Power menu" })

-- bindld = , XF86PowerOff, Power menu, exec, $HOME/scripts/omarchy-menu system

hl.bind(
	"SUPER + K",
	hl.dsp.exec_cmd(os.getenv("HOME") .. "/scripts/open_key_menu"),
	{ description = "view keybindings" }
)
hl.bind("SUPER + SHIFT + Y", hl.dsp.exec_cmd("uwsm-app -- xdg-terminal-exec -e yazi"), { description = "yazi" })
hl.bind("SUPER + T", hl.dsp.window.float(), { description = "float window" })
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("wofi --prompt='search app' -i"), { description = "App menu" })
hl.bind("SUPER + P", hl.dsp.window.pseudo(), { description = "pseudo window" })

-- dwindle

hl.bind("SUPER + J", hl.dsp.layout("togglesplit"), { description = "toggle split" })
hl.bind("SUPER + V", hl.dsp.exec_cmd("clipboard_history"), { description = "clipboard history" })

-- bind = SUPER, M, exec, wofi --show drun

hl.bind(
	"SUPER + S",
	hl.dsp.exec_cmd("rg --files --ignore-case ~ | wofi -d --prompt='search file'| xargs xdg-open"),
	{ description = "search file" }
)

-- STT

-- hl.bind("SUPER + O", hl.dsp.exec_cmd("~/.local/bin/handy.appimage --toggle-transcription"),	{ description = "toggle transcription" })
hl.bind("SUPER + O", hl.dsp.exec_cmd("voxtype record start"), { description = "start voice recording" })
hl.bind("SUPER + O", hl.dsp.exec_cmd("voxtype record stop"), { release = true, description = "stop voice recording" })

-- Screenshots

hl.bind("SUPER + PRINT", hl.dsp.exec_cmd("hyprshot -m window"), { description = "screenshot window" })
hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m output"), { description = "screenshot output" })
hl.bind("SUPER + SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m region"), { description = "screenshot region" })

-- Move focus with mainMod + arrow keys

hl.bind("SUPER + left", hl.dsp.focus({ direction = "left" }), { description = "move focus left" })
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }), { description = "move focus right" })
hl.bind("SUPER + up", hl.dsp.focus({ direction = "up" }), { description = "move focus up" })
hl.bind("SUPER + down", hl.dsp.focus({ direction = "down" }), { description = "move focus down" })
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true }, { description = "drag window" })
