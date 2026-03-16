audio_play_sound(forest_ambience, 100, true);

enum states {
	idle = 0,
	walk = 1,
	run = 2,
	jump = 3,
	attack = 4,
	hurt = 5,
	dead = 6
}

instance_create_layer(1500, 512, "Instances_1", obj_enemy1).image_yscale = 1.5;