function enemy_dead(obj, dead_spr){
	obj.sprite_index = dead_spr;
	
	if (obj.image_index >= obj.image_number -1) instance_destroy(obj);
}