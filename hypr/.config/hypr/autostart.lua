--################
--## AUTOSTART ###
--################

hl.on("hyprland.start", function()
	hl.exec_cmd("uwsm-app -- swaybg -i ~/Pictures/Wallpapers/2026-01-17-160027_hyprshot.png")
	hl.exec_cmd("uwsm-app -- swayosd-server")
	hl.exec_cmd("uwsm-app -- waybar")
	hl.exec_cmd("uwsm-app -- mako")
	-- hl.exec_cmd("hyprpm reload -n")
	hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme prefer-dark")
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
end)
