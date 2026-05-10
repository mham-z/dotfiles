hl.window_rule({
    name = "suppress-maximize-events",
    match = {class = ".*"},
    suppress_event = "maximize",
})

hl.window_rule({
    name = "fix-xwayland-drags",
    match = {class = "^$", title = "^$", xwayland = true, float = true, fullscreen = false, pin = false},
    no_focus = true,
})

hl.window_rule({
    name = "fix-flameshot",
    match = {class = "flameshot"},
    no_anim = true,
    stay_focused = true,
    border_size = 0,
    float = true,
})

hl.window_rule({
    name = "nmtui",
    match = {class = "nmtui"},
    float = true,
    center = true,
    size = {1000, 700},
    pin = true,
    dim_around = true,
})

hl.window_rule({
    name = "blueman",
    match = {class = "blueman-manager"},
    float = true,
    center = true,
    size = {1000, 700},
    pin = true,
    dim_around = true,
})

hl.window_rule({
    name = "filepicker",
    match = {class = "xdg-desktop-portal-gtk"},
    float = true,
    center = true,
    size = {800, 600},
})

hl.window_rule({
    name = "kitty",
    match = {class = "kitty"},
    float = true,
    center = true,
    size = {800, 600},
})

hl.window_rule({
    name = "drag-translucency",
    match = {tag = "dragged"},
    opacity = "0.5",
})

hl.window_rule({
    name = "vesktop-workspace",
    match = {class = "vesktop"},
    workspace = "2 silent",
})

hl.layer_rule({
    name = "no-anim-selection",
    match = {namespace = "selection"},
    no_anim = true,
})

hl.layer_rule({
    name = "tofi-slide",
    match = {namespace = "launcher"},
    animation = "slide left",
})

hl.layer_rule({
    name = "notif-slide",
    match = {namespace = "notifications"},
    animation = "slide right",
})