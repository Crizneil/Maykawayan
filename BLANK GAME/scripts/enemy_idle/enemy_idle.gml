function enemy_idle(obj, diff, idle_spr, attack_spr, walk_spr) {
	obj.sprite_index = idle_spr;
	
	if (place_meeting(obj.x, obj.y, p_att_hitbox)) {
		obj.image_index = 0;
		obj.hp -= player_damage(20, 40);
		if (obj.hp <= 0) {
			obj_player.kill_count += 1;
			audio_play_sound(sfx_enemy_dead, 1000, false);
			obj.e_state = states.dead;
		}
		else {
			physics_apply_impulse(phy_position_x, phy_position_y, 750 * -dir, 0);
			obj.e_state = states.hurt;
		}
	} else {
		if (obj.image_index >= obj.image_number - 1) {
			obj.image_index = 0;
			if (abs(diff) > 65) {
				obj.sprite_index = walk_spr;
				obj.loop_count = 0;
				obj.e_state = states.walk;
			} else {
				if (obj.loop_count == 2 && obj_player.hp > 0) {
					obj.sprite_index = attack_spr;
					obj.loop_count = 0;
					obj.e_state = states.attack;
				} else {
					obj.loop_count++;
				}
			}
		}
	}
}