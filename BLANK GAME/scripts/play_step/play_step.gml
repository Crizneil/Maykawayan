function play_step(current_room){
	var sound_file;
	
	switch (current_room) {
		case Forest: sound_file = sfx_forest_step; break;
		case Cave: sound_file = sfx_cave_step; break;
		case Church: sound_file = sfx_church_step; break;
	}
	
	return sound_file;
}