if (p_state != states.attack && p_state != states.hurt && p_state != states.dead) {
	if (keyboard_check(vk_right) && keyboard_check(vk_left)) {
		if (right && keyboard_check(vk_left)) {
			move_left(obj_player); dir = -1;
		}
		else if (left && keyboard_check(vk_right)) {
			move_right(obj_player); dir = 1;
		}
	} else {
		if (keyboard_check(vk_right) && !keyboard_check(vk_left)) {
			right = true; left = false; move_right(obj_player); dir = 1;
		} else if (keyboard_check(vk_left) && !keyboard_check(vk_right)) {
			left = true; right = false; move_left(obj_player); dir = -1;
		} else { right = false; left = false; }
	}
}

phy_fixed_rotation = true;


if (hitbox_time == 1) {
	instance_destroy(hitbox_inst);
	hitbox_inst = noone;
}

switch(p_state) {
	case states.idle: player_idle(self); break;
	case states.walk: player_walk(self); break;
	case states.run: player_run(self); break;
	case states.jump: player_jump(self); break;
	case states.attack: player_attack(self, dir); break;
	case states.hurt: player_hurt(self); break;
	case states.dead: player_dead(self); break;
}

if (place_meeting(x, y+1, obj_ground)) {
	jump_count = 0;
	if (p_state != states.attack && p_state != states.dead && p_state != states.hurt && keyboard_check_pressed(vk_space) && jump_count == 0) {
		physics_apply_impulse(x, y, 0, -y_force);
		jump_count = 1;
	}
} else {
	p_state = states.jump;
}