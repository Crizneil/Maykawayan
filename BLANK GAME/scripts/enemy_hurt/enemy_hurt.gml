function enemy_hurt(obj, walk_spr, hurt_spr){
	obj.sprite_index = hurt_spr;
	
	if (obj.image_index >= obj.image_number - 1) {
		obj.sprite_index = walk_spr;
		obj.e_state = states.walk;
	}
}