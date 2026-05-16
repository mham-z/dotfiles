local STATUSBAR_HEIGHT = 42

hl.config({
	general = {
		gaps_in = 6;
		gaps_out = {top = 12+STATUSBAR_HEIGHT, left = 12, right = 12, bottom = 12};

		border_size = 3;
		resize_on_border = true;
		extend_border_grab_area = 3;
		col = {
			active_border = Colors.iris;
			inactive_border = Colors.surface;
		};

		layout = "dwindle";

		snap = {
			enabled = true;
			respect_gaps = true;
		}
	};

	dwindle = {
		preserve_split = true;
		--[[precise_mouse_move = true;
		force_split = 0;
		split_bias = 1;
		default_split_ratio = 1.2;]]
	};

	group = {
		drag_into_group = 1;
		col = {
			border_active = Colors.foam;
			border_inactive = Colors.muted;
			border_locked_active = Colors.pine;
			border_locked_inactive = Colors.overlay;
		};

		groupbar = {
			font_size = 12;
			font_weight_active = "bold";
			font_weight_inactive = "bold";
			gradients = true;
			height = 20;
			indicator_gap = 0;
			indicator_height = 0;
			stacked = false;
			priority = 3;
			render_titles = true;
			text_offset = 0;
			text_padding = 5;
			scrolling = true;
			gradient_rounding = 10;
			gradient_rounding_power = 2.0;
			round_only_edges = true;
			gradient_round_only_edges = false;

			-- Colors
			col = {
				active = Colors.foam;
				inactive = Colors.highlightMed;
				locked_active = Colors.pine;
				locked_inactive = Colors.overlay;
			};

			-- Text colors
			text_color = Colors.overlay;
			text_color_inactive = Colors.text;
			text_color_locked_active = Colors.text;
			text_color_locked_inactive = Colors.text;

			gaps_in = 6;
			gaps_out = 6;
			keep_upper_gap = false;
			blur = false;
		};
	};

	cursor = {
		sync_gsettings_theme = true;
		inactive_timeout = 10;
	};

	render = {
		new_render_scheduling = true;
	}
})
