if (!audio_group_is_loaded(ambience)) audio_group_load(ambience);
if (!audio_group_is_loaded(player))audio_group_load(player);
if (!audio_group_is_loaded(attack_sfx))audio_group_load(attack_sfx);

audio_play_sound(main_menu_bgm, 1000, true);