if (keyboard_check_pressed(vk_escape)) {
	audio_stop_sound(main_menu_bgm);
	audio_group_stop_all(player);
	if (!paused) {
		paused = true;
		instance_deactivate_all(true);
		visible = true;
		instance_activate_object(watermark);
		instance_activate_object(bt_resume);
		instance_activate_object(bt_restart);
		instance_activate_object(bt_main_menu);
	} else {
		paused = false;
		instance_activate_all();
		instance_deactivate_object(bt_resume);
		instance_deactivate_object(bt_restart);
		instance_deactivate_object(bt_main_menu);
		visible = false;
	}
}