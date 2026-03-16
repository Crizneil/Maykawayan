function player_idle(obj){
	obj.phy_speed_x = 0;
	obj.can_attack = true;
	
	if (place_meeting(obj.x, obj.y, e1_att_hitbox)) {
		var hitbox_id = instance_place(obj.x, obj.y, e1_att_hitbox);
		var diff = obj.x - hitbox_id.x;
		var dir = diff / abs(diff);
		obj.hp -= random_range(5, 7);
		obj.image_index = 0;
		if (obj.hp <= 0) p_state = states.dead;
		else {
			audio_play_sound(sfx_enemy_hit, 1000, false);
			obj.image_xscale = -dir * 3;
			physics_apply_impulse(obj.phy_position_x, obj.phy_position_y, dir * 8000, 0);
			p_state = states.hurt;
		}
	}
	else {
		if (keyboard_check(vk_right) || keyboard_check(vk_left)) {
			if (keyboard_check(vk_shift)) {
				audio_group_stop_all(player);
				audio_play_sound(play_run(room), 1000, true);
				obj.sprite_index = spr_run;
				p_state = states.run;
			}
			else {
				audio_group_stop_all(player);
				audio_play_sound(play_walk(room), 1000, true);
				obj.sprite_index = spr_walk;
				p_state = states.walk;
			}
		} 
	
		if (keyboard_check_pressed(vk_space) && obj.jump_count == 0) {
			audio_play_sound(sfx_jump, 1000, false);
			obj.image_index = 0;
			p_state = states.jump;
		}
	
		if (keyboard_check_pressed(ord("E"))) {
			audio_group_stop_all(player);
			audio_play_sound(sfx_attack1, 1000, false);
			obj.image_index = 0;
			obj.sprite_index = spr_attack1;
			p_state = states.attack;
		}
	}
}