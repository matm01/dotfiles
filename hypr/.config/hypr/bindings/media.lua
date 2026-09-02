---@module 'hl'

local osdclient = "swayosd-client --monitor $(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name')"

-- Laptop multimedia keys for volume and LCD brightness (with OSD)
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd(
		"swayosd-client --monitor $(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name') --output-volume raise"
	),
	{ description = "raise volume", locked = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd(
		"swayosd-client --monitor $(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name') --output-volume lower"
	),
	{ description = "lower volume", locked = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd(
		"swayosd-client --monitor $(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name') --output-volume mute-toggle"
	),
	{ description = "mute", locked = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd(
		"swayosd-client --monitor $(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name') --input-volume mute-toggle"
	),
	{ description = "mic mute", locked = true }
)
hl.bind(
	"XF86MonBrightnessUp",
	hl.dsp.exec_cmd(
		"swayosd-client --monitor $(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name') --brightness raise"
	),
	{ description = "increase brightness", locked = true }
)
hl.bind(
	"XF86MonBrightnessDown",
	hl.dsp.exec_cmd(
		"swayosd-client --monitor $(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name') --brightness lower"
	),
	{ description = "decrease brightness", locked = true }
)

-- Precise 1% multimedia adjustments with Alt modifier

hl.bind(
	"ALT" .. " + " .. "XF86AudioRaiseVolume",
	hl.dsp.exec_cmd(
		"swayosd-client --monitor $(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name') --output-volume +1"
	),
	{ description = "increase volume by 1%", locked = true }
)
hl.bind(
	"ALT" .. " + " .. "XF86AudioLowerVolume",
	hl.dsp.exec_cmd(
		"swayosd-client --monitor $(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name') --output-volume -1"
	),
	{ description = "decrease volume by 1%", locked = true }
)
hl.bind(
	"ALT" .. " + " .. "XF86MonBrightnessUp",
	hl.dsp.exec_cmd(
		"swayosd-client --monitor $(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name') --brightness +1"
	),
	{ description = "increase brightness by 1%", locked = true }
)
hl.bind(
	"ALT" .. " + " .. "XF86MonBrightnessDown",
	hl.dsp.exec_cmd(
		"swayosd-client --monitor $(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name') --brightness -1"
	),
	{ description = "decrease brightness by 1%", locked = true }
)

-- Requires playerctl

hl.bind(
	"XF86AudioNext",
	hl.dsp.exec_cmd(
		"swayosd-client --monitor $(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name') --playerctl next"
	),
	{ description = "next track", locked = true }
)
hl.bind(
	"XF86AudioPause",
	hl.dsp.exec_cmd(
		"swayosd-client --monitor $(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name') --playerctl play-pause"
	),
	{ description = "pause", locked = true }
)
hl.bind(
	"XF86AudioPlay",
	hl.dsp.exec_cmd(
		"swayosd-client --monitor $(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name') --playerctl play-pause"
	),
	{ description = "play", locked = true }
)
hl.bind(
	"XF86AudioPrev",
	hl.dsp.exec_cmd(
		"swayosd-client --monitor $(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name') --playerctl previous"
	),
	{ description = "previous track", locked = true }
)

-- Switch audio output with Super + Mute

hl.bind(
	"SUPER" .. " + " .. "XF86AudioMute",
	hl.dsp.exec_cmd("omarchy-cmd-audio-switch"),
	{ description = "switch audio output", locked = true }
)
