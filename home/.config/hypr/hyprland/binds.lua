local uwsm = "uwsm app -- "
local scripts = "~/.config/dotfiles-scripts/"

-- basics
hl.bind("SUPER + R", hl.dsp.exec_cmd("hyprctl reload & pkill -SIGUSR2 waybar"))
hl.bind("SUPER + C", hl.dsp.window.close())
hl.bind("SUPER + F", hl.dsp.window.float())
hl.bind("SUPER + S", hl.dsp.window.fullscreen())
hl.bind("SUPER + B", hl.dsp.layout("togglesplit"))
hl.bind("SUPER + N", hl.dsp.layout("swapsplit"))
local lowres = false
hl.bind("SUPER + M", function()
	lowres = not lowres

	hl.config({input = {sensitivity = lowres and -0.2 or 0}})
	hl.monitor({
		output = "eDP-1";
		mode = (lowres and "960x540" or "preferred");
		position = "auto";
		scale = (lowres and "0.8" or "1");
	})
end)
hl.bind("SUPER + G", hl.dsp.group.toggle())
hl.bind("SUPER + SHIFT + G", hl.dsp.group.lock())
hl.bind("SUPER + ALT + RIGHT", hl.dsp.group.move_window({forward = true}))
hl.bind("SUPER + ALT + LEFT", hl.dsp.group.move_window({forward = false}))
hl.bind("SUPER + Y", hl.dsp.group.next())
hl.bind("SUPER + T", hl.dsp.group.prev())

-- power
hl.bind("SUPER + CTRL + ALT + E", hl.dsp.exec_cmd("hyprshutdown -t \"Exiting Hyprland...\""))
hl.bind("SUPER + CTRL + ALT + H", hl.dsp.exec_cmd("hyprshutdown -t \"Shutting down...\" -p \"systemctl poweroff\""))
hl.bind("SUPER + CTRL + ALT + R", hl.dsp.exec_cmd("hyprshutdown -t \"Rebooting...\" -p \"systemctl reboot\""))
hl.bind("SUPER + CTRL + ALT + L", hl.dsp.exec_cmd("loginctl lock-session"))
hl.bind("SUPER + CTRL + ALT + S", hl.dsp.exec_cmd("systemctl suspend"), {locked = true})

-- apps
hl.bind("SUPER + Q", hl.dsp.exec_cmd(uwsm.."kitty"))
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd(uwsm.."$(tofi-drun -c ~/.config/tofi/drun)"))
hl.bind("SUPER + E", hl.dsp.exec_cmd(uwsm..scripts.."tofi-runlog"))
hl.bind("SUPER + SHIFT + E", hl.dsp.exec_cmd(uwsm..scripts.."tofi-runlog-viewer"))
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd(uwsm.."flameshot gui"))
hl.bind("SUPER + V", hl.dsp.exec_cmd("bash pgrep -f \"^cursor-clip$\" || cursor-clip"))

-- multimedia
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+ && "..scripts.."/nsosd sink"), {locked = true, repeating = true})
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- && "..scripts.."/nsosd sink"), {locked = true, repeating = true})
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle && "..scripts.."/nsosd sink"), {locked = true, repeating = true})
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e2.4 -n15 set 5%+ && "..scripts.."/nsosd brightness"), {locked = true, repeating = true})
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e2.4 -n15 set 5%- && "..scripts.."/nsosd brightness"), {locked = true, repeating = true})
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), {locked = true})
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), {locked = true})
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), {locked = true})
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), {locked = true})

-- workspaces
for i = 1, 10 do
	local key = i % 10
	hl.bind("SUPER + "..key, hl.dsp.focus({workspace = i}))
	hl.bind("SUPER + SHIFT + "..key, hl.dsp.window.move({workspace = i}))
end

-- mouse controls
hl.bind("SUPER + mouse:272", hl.dsp.window.tag({tag = "+dragged"}), {mouse = true})
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), {mouse = true})
hl.bind("SUPER + mouse:272", hl.dsp.window.tag({tag = "-dragged"}), {mouse = true, release = true})
hl.bind("mouse:272", hl.dsp.window.tag({tag = "-dragged"}), {mouse = true, release = true, non_consuming = true})
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), {mouse = true})

-- window controls
local directions = {"up", "down", "right", "left"}
for _, v in pairs(directions) do
	local d = string.sub(v, 1, 1)
	hl.bind("SUPER + "..v, hl.dsp.focus({direction = d}))
	hl.bind("SUPER + SHIFT +"..v, function()
		if hl.get_active_window().group ~= nil then
			hl.dispatch(hl.dsp.window.move({out_of_group = d}))
		else
			hl.dispatch(hl.dsp.window.move({into_group = d}))
			hl.dispatch(hl.dsp.window.move({direction = d}))
		end
	end)
end
hl.bind("SUPER + CTRL + UP", hl.dsp.window.resize({x = 0, y = -50, relative = true}), {repeating = true})
hl.bind("SUPER + CTRL + DOWN", hl.dsp.window.resize({x = 0, y = 50, relative = true}), {repeating = true})
hl.bind("SUPER + CTRL + RIGHT", hl.dsp.window.resize({x = 50, y = 0, relative = true}), {repeating = true})
hl.bind("SUPER + CTRL + LEFT", hl.dsp.window.resize({x = -50, y = 0, relative = true}), {repeating = true})
hl.bind("SUPER + SHIFT + ALT + UP", hl.dsp.window.move({x = 0, y = -50, relative = true}), {repeating = true})
hl.bind("SUPER + SHIFT + ALT + DOWN", hl.dsp.window.move({x = 0, y = 50, relative = true}), {repeating = true})
hl.bind("SUPER + SHIFT + ALT + RIGHT", hl.dsp.window.move({x = 50, y = 0, relative = true}), {repeating = true})
hl.bind("SUPER + SHIFT + ALT + LEFT", hl.dsp.window.move({x = -50, y = 0, relative = true}), {repeating = true})
