function play_run(current_room){
	var sound_file;
	
	switch (current_room) {
		case Forest: sound_file = sfx_forest_run; break;
		case Cave: sound_file = sfx_cave_run; break;
		case Church: sound_file = sfx_church_run; break;
	}
	
	return sound_file;
}