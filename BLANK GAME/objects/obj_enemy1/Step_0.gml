diff = phy_position_x-obj_player.phy_position_x;

phy_fixed_rotation = true;

if (hitbox_time == 1) {
	instance_destroy(hitbox_inst);
	hitbox_time = 0;
}

switch (e_state) {
	case states.attack: enemy_attack(self, dir, spr_enemy1_walk, 3); break;
	case states.idle: enemy_idle(self, diff, spr_enemy1_idle, spr_enemy1_attack, spr_enemy1_walk); break;
	case states.walk: enemy_walk(self, diff, dir, spr_enemy1_attack); break;
	case states.hurt: enemy_hurt(self, spr_enemy1_walk, spr_enemy1_hurt); break;
	case states.dead: enemy_dead(self, spr_enemy1_dead); break;
}