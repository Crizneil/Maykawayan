function church_wave(originX, index){
	switch (index) {
		case 1: 
			instance_create_layer(originX - 1000, 512, "Instances_1", obj_enemy1).image_yscale = 1.5;
			instance_create_layer(originX + 1000, 512, "Instances_1", obj_enemy1).image_yscale = 1.5;
			instance_create_layer(originX - 1100, 512, "Instances_1", obj_enemy1).image_yscale = 1.5;
			instance_create_layer(originX + 1100, 512, "Instances_1", obj_enemy1).image_yscale = 1.5;
	}
}