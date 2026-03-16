instance_destroy(obj_player);

instance_create_depth(0, 0, -9999, obj_fade);
switch (room) {
	case Forest: audio_sound_gain(forest_ambience, 0, 500); break;
	case Cave: audio_sound_gain(cave_ambience, 0, 500); break;
	case Church: audio_sound_gain(church_ambience, 0, 500); break;
}

room_goto_next();