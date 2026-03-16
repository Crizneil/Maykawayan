image_xscale *= 10000;
image_yscale *= 50;

fadeSpeed = 0.05;

image_alpha = 0.5;

paused = false;

resume_bt = instance_create_layer(x, y - 50, "Instances_1", bt_resume);
restart_bt = instance_create_layer(x, y + 100, "Instances_1", bt_restart);
main_menu_bt = instance_create_layer(x, y + 250, "Instances_1", bt_main_menu);
resume_bt.image_xscale = 0.23; restart_bt.image_xscale = 0.23; main_menu_bt.image_xscale = 0.23;
resume_bt.image_yscale = 0.15; restart_bt.image_yscale = 0.15; main_menu_bt.image_yscale = 0.15;
instance_deactivate_object(resume_bt);
instance_deactivate_object(restart_bt);
instance_deactivate_object(main_menu_bt);