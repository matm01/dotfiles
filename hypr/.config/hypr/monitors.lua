---@module 'hl'

local smw = require("plugins.split-monitor-workspaces")
local mainMod = "SUPER"

hl.monitor({
	output = "HDMI-A-1",
	disabled = true,
})

hl.monitor({
	output = "DP-3",
	mode = "1920x1080@60",
	position = "0x0",
	scale = 1,
})

hl.monitor({
	output = "DP-2",
	mode = "1920x1080@60",
	position = "1920x0",
	scale = 1,
})

--------------
--  workspaces
--------------

smw.setup({
	workspace_count = 5,
	keep_focused = false,
	enable_notifications = false,
	enable_persistent_workspaces = true,
})

for i = 1, smw.get_amount_of_workspaces() do
	local n = tostring(i)
	hl.bind(mainMod .. " +" .. n, smw.workspace(n), { description = "switch to workspace " .. n })
	-- Move the active window to the Nth workspace on the currently focused monitor silently (no focus change).
	hl.bind(
		mainMod .. " + SHIFT +" .. n,
		smw.move_to_workspace(n),
		{ description = "Move focused window to workspace " .. n }
	)
	hl.bind(
		mainMod .. " + SHIFT + ALT +" .. n,
		smw.move_to_workspace_silent(n),
		{ description = "Move focused window to workspace " .. n .. " silently" }
	)
end

hl.bind(
	"SUPER + CTRL + SHIFT + LEFT",
	hl.dsp.window.move({ monitor = "l" }),
	{ description = "Move focused window to left monitor" }
)
hl.bind(
	"SUPER + CTRL + SHIFT + RIGHT",
	hl.dsp.window.move({ monitor = "r" }),
	{ description = "Move focused window to right monitor" }
)

-- workspace cycling

hl.bind("SUPER + TAB", smw.cycle_workspaces("next"), { description = "cycle through workspaces" })
hl.bind("SUPER + SHIFT + TAB", smw.cycle_workspaces("prev"), { description = "cycle backwards through workspaces" })
hl.bind("SUPER + SHIFT + RIGHT", smw.workspace("+1"), { description = "move to next workspace" })
hl.bind("SUPER + SHIFT + LEFT", smw.workspace("-1"), { description = "move to previous workspace" })
