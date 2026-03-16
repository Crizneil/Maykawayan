function player_dead(obj){
	obj.sprite_index = spr_dead;
	
	if (obj.image_index >= obj.image_number -1) obj.image_speed = 0;
}