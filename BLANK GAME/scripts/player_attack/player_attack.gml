function player_attack(obj, dir){
	obj.can_attack = false;
	obj.phy_speed_x = 0;
	
	if (obj.image_index == 3) {
		obj.hitbox_inst = instance_create_layer(obj.x, obj.y, "Instances_1", p_att_hitbox);
		obj.hitbox_inst.image_xscale = dir * 3;
		obj.hitbox_inst.image_yscale = 3;
		obj.hitbox_time = 1;
	}
	
	if (obj.image_index >= obj.image_number - 1) {
		obj.sprite_index = spr_idle;
		p_state = states.idle;
	}
}