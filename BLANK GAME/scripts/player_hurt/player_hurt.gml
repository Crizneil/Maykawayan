function player_hurt(obj){
	obj.sprite_index = spr_hurt;
	
	if (obj.image_index >= obj.image_number - 1) {
		obj.sprite_index = spr_idle;
		obj.p_state = states.idle;
	}
}