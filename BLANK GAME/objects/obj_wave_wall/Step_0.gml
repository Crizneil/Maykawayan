if (target != noone && obj_player.kill_count >= target) {
	var camPosX = camera_get_view_x(view_camera[0]);
	var camPosY = camera_get_view_y(view_camera[0]);
	
	if (abs(camPosX - (obj_player.phy_position_x - 683)) <= 5) {
		camera_set_view_target(view_camera[0], obj_player);
		audio_sound_gain(wave_battle_bgm, 0, 500);
		switch (room) {
			case Forest: audio_play_sound(forest_ambience, 1000, true); break;
			case Cave: audio_play_sound(cave_ambience, 1000, true); break;
			case Church: audio_play_sound(church_ambience, 1000, true); break;
		}
		instance_destroy();
	} else {
		if (camPosX < (obj_player.phy_position_x - 683)) camPosX += camera_speed;
		else camPosX -= camera_speed;
		camera_set_view_pos(view_camera[0], camPosX, camPosY);
	}
}