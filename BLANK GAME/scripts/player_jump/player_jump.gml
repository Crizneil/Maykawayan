function player_jump(obj){
	if (keyboard_check(vk_shift)) obj.move_speed = 16;
	else obj.move_speed = 8;
	
	if (!place_meeting(x, y+2, obj_ground)) {
		if (obj.phy_speed_y > -4) obj.sprite_index = spr_jump_aerial;
		else obj.sprite_index = spr_jump_init;
	}
	else {
		audio_play_sound(play_step(room), 1000, false);
		obj.jump_count = 0;
		if (keyboard_check(vk_right) || keyboard_check(vk_left)) {
			if (keyboard_check(vk_shift)) {
				audio_play_sound(play_run(room), 1000, true);
				obj.sprite_index = spr_run;
				p_state = states.run;
			}
			else {
				audio_play_sound(play_walk(room), 1000, true);
				obj.sprite_index = spr_walk;
				p_state = states.walk;
			}
		}
		else {
			obj.sprite_index = spr_idle;
			p_state = states.idle;
		}
	}
}