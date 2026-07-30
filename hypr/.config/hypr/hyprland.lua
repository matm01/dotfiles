---@module 'hl'

require("autostart")
require("inputs")
require("looknfeel")
require("bindings")
require("windowrules.system")
require("bindings.media")
require("color_theme")

-- comment out for laptop
require("monitors")

hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = "auto",
})

hl.monitor({
	output = "eDP-1",
	mode = "1920x1200@60",
	position = "auto",
	scale = 1.3333334,
})

--############################
--## ENVIRONMENT VARIABLES ###
--############################

hl.env("XCURSOR_SIZE", 24)
hl.env("HYPRCURSOR_SIZE", 24)

--#############################
--## WINDOWS AND WORKSPACES ###
--#############################

-- Ignore maximize requests from apps. You'll probably like this.

hl.window_rule({
	match = {
		class = ".*",
	},
	suppress_event = "maximize",
})

-- Fix some dragging issues with XWayland

-- windowrule = nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0
-- hl.window_rule(
--   {
--     class = "^$",
--     title = "^$",
--     xwayland = true,
--     float = true,
--     fullscreen = false,
--     pin = false,
--   },
--   { no_focus = true }
-- )
-- NVIDIA environment variables

hl.env("NVD_BACKEND", "direct")

hl.env("LIBVA_DRIVER_NAME", "nvidia")

hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
