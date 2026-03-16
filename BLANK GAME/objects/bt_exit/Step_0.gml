hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if (hovering) {
	if (mouse_check_button(mb_left)) {
		clicked = true;
		if (image_xscale > 0.215) {
			image_xscale -= scale_speed*2;
			image_yscale -= scale_speed*2;
		}
	}
	else {
		if (image_xscale < 0.245) {
			image_xscale += scale_speed;
			image_yscale += scale_speed;
			
		}
	}
} else {
	if (image_xscale > 0.23) {
		image_xscale -= scale_speed;
		image_yscale -= scale_speed;
	}
}

if (mouse_check_button_released(mb_left)) {
	clicked = false;
	
	image_xscale = 0.23;
	image_yscale = 0.15;
	
	if (hovering) {
		game_end();
	}
}