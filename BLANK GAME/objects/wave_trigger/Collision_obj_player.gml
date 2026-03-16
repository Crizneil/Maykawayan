camera_set_view_target(view_camera[0], noone);

var left_wall_x = x - (1366 / 2) - 100;

var left_wall = instance_create_layer(left_wall_x, 300, "Instances_1", obj_wave_wall);
left_wall.image_yscale = 9;

if (wave_index != noone) {
	audio_stop_sound(wave_battle_bgm);
	audio_group_stop_all(ambience);
	audio_play_sound(wave_battle_bgm, 1000, true);
	audio_sound_gain(wave_battle_bgm, 1, 0);
	
	switch (room) {
		case Forest: forest_wave(x, wave_index); break;
		case Cave: cave_wave(x, wave_index); break;
		case Church: church_wave(x, wave_index); break;
	}
}

instance_destroy();