function enemy_attack(obj, dir, walk_spr, damage_index){
	phy_speed_x = 0;
	
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
		if (obj.image_index == damage_index) {
			obj.hitbox_inst = instance_create_layer(obj.x, obj.y, "Instances_1", e1_att_hitbox);
			obj.hitbox_inst.image_xscale = dir * 1.5;
			obj.hitbox_inst.image_yscale = 1.5;
			obj.hitbox_time = 1;
		}
		
		if (obj.image_index >= obj.image_number - 1) {
			if (abs(diff) > 65) {
				obj.sprite_index = walk_spr;
				obj.e_state = states.walk;
			} else {
				obj.e_state = states.idle;
			}
		}
	}
}