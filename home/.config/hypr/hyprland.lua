
-- fallback
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "1",
})

hl.bind("SUPER + Q", hl.dsp.exec_cmd("kitty"))
hl.bind("SUPER + C", hl.dsp.window.close())
hl.bind("SUPER + CTRL + ALT + E", hl.dsp.exec_cmd("hyprshutdown -t \"Exiting Hyprland...\""))
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("uwsm app -- $(tofi-drun -c ~/.config/tofi/drun)"))

for i = 1, 10 do
    local key = i % 10
    hl.bind("SUPER + " .. key, hl.dsp.focus({workspace = i}))
    hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({workspace = i}))
end