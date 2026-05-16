hl.config({
	decoration = {
		rounding = 21;

		shadow = {
			enabled = true;
			range = 14;
			render_power = 3;
			color = Colors.base;
		};

		blur = {enabled = false};
	};
})

hl.curve("easeOutQuint", {type = "bezier", points = {{0.23, 1}, {0.32, 1}}})
hl.curve("almostLinear", {type = "bezier", points = {{0.5, 0.5}, {0.75, 1}}})
hl.curve("quick", {type = "bezier", points = {{0.15, 0}, {0.1, 1}}})
hl.curve("easeout", {type = "bezier", points = {{0.25, 0.1}, {0.25, 1}}})

hl.animation({leaf = "global", enabled = true, speed = 10, bezier = "default"})
hl.animation({leaf = "border", enabled = true, speed = 3.39, bezier = "easeOutQuint"})
hl.animation({leaf = "windows", enabled = true, speed = 4.79, bezier = "almostLinear"})
hl.animation({leaf = "windowsIn", enabled = true, speed = 0.7, bezier = "almostLinear", style = "popin 87%"})
hl.animation({leaf = "windowsOut", enabled = true, speed = 0.7, bezier = "almostLinear", style = "popin 87%"})
hl.animation({leaf = "windowsMove", enabled = true, speed = 1.5, bezier = "almostLinear"})
hl.animation({leaf = "fade", enabled = true, speed = 1.03, bezier = "quick"})
hl.animation({leaf = "fadeIn", enabled = true, speed = 1.1, bezier = "almostLinear"})
hl.animation({leaf = "fadeOut", enabled = true, speed = 1.1, bezier = "almostLinear"})
hl.animation({leaf = "fadeDpms", enabled = true, speed = 10, bezier = "easeout"})
hl.animation({leaf = "workspaces", enabled = true, speed = 1.5, bezier = "almostLinear", style = "fade"})
hl.animation({leaf = "layers", enabled = true, speed = 1, bezier = "almostLinear", style = "fade"})
hl.animation({leaf = "layersIn", enabled = true, speed = 1, bezier = "almostLinear", style = "fade"})
hl.animation({leaf = "layersOut", enabled = true, speed = 1.1, bezier = "almostLinear", style = "fade"})