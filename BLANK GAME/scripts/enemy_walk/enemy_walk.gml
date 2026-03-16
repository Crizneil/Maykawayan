function enemy_walk(obj, diff, dir, attack_spr){
	obj.loop_count = 0;
	
	if (place_meeting(x, y, p_att_hitbox)) {
		obj.phy_speed_x = 0;
		obj.image_index = 0;
		obj.hp -= player_damage(20, 40);
		if (obj.hp <= 0) {
			obj_player.kill_count += 1;
			audio_play_sound(sfx_enemy_dead, 1000, false);
			obj.e_state = states.dead;
		}
		else {
			physics_apply_impulse(obj.phy_position_x, obj.phy_position_y, 750 * -dir, 0);
			obj.e_state = states.hurt;
		}
	} else {
		obj.dir = -(diff / abs(diff));
		if (abs(diff) > 65) {
			obj.phy_speed_x = obj.dir * obj.move_speed;
			obj.image_xscale = obj.dir * 1.5;
		} else {
			obj.image_index = 0;
			obj.sprite_index = attack_spr;
			obj.e_state = states.attack;
		}
	}
	
}