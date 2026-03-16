function play_walk(current_room){
	var sound_file;
	
	switch (current_room) {
		case Forest: sound_file = sfx_forest_walk; break;
		case Cave: sound_file = sfx_cave_walk; break;
		case Church: sound_file = sfx_church_walk; break;
	}
	
	return sound_file;
}