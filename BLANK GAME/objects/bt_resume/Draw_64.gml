draw_self();
draw_set_font(fnt_button);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);

if (hovering) {
	if (mouse_check_button(mb_left)) scale_x = 0.85;
	else scale_x = 1.15;
} else {
	if (!clicked) scale_x = 1;
}

if (mouse_check_button_released(mb_left)) {
	if (!hovering) scale_x = 1;
}

scale_y = scale_x;

draw_text_transformed(x, y, button_text, scale_x, scale_y, 0);