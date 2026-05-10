--[[
    it's recommended to put as much stuff as possible in
    $XDG_CONFIG_HOME/autostart or enable them with systemctl
    so uwsm can handle them properly. regardless, some things
    can't be started that way so we put them here.
]]--

local startup = {
	"systemd-inhibit --who=\"Hyprland Configuration\" --why=\"Disable power button\" --what=handle-power-key --mode=block sleep infinity & echo $! > /tmp/.hyprland-systemd-inhibit";
}

local startup_uwsm = {
	"~/.config/dotfiles-scripts/rofi-polkit";
	"cursor-clip --daemon";
	"udiskie -s";
	"wlsunset -l 25 -L 67";
	"notify-send works works";
}

local shutdown = {
	"kill -9 \"$(cat /tmp/.hyprland-systemd-inhibit)\"";
}


hl.on("hyprland.start", function()
	for _, v in pairs(startup) do
		hl.exec_cmd(v)
	end

	for _, v in pairs(startup_uwsm) do
		hl.exec_cmd("uwsm app -- "..v)
	end
end)

hl.on("hyprland.shutdown", function()
	for _, v in pairs(shutdown) do
		hl.exec_cmd(v)
	end
end)