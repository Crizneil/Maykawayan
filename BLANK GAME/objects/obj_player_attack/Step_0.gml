move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;

if (move_x > 0) {
	sprite_index = Walk;
} else {
	sprite_index = Idle;
}

if (place_meeting(x, y+2, obj_wall)) {
	move_y = 0;
	if (keyboard_check(vk_space)) move_y = -jump_speed;
}
else if (move_y < 10) move_y += 1;

move_and_collide(move_x, move_y, obj_wall);

// Start attack if key is pressed and not already attacking
if (keyboard_check_pressed(vk_space) && !attacking) {
    attacking = true;
    attack_frame = 0;
    sprite_index = spr_player_attack;
    image_index = 0;
    image_speed = 0.3; // adjust to control attack animation speed
}

// If attacking, count frames and reset when done
if (attacking) {
    attack_frame += 1;

    if (image_index >= image_number - 1) {
        attacking = false;
        sprite_index = spr_player_idle; // or walk, depending
        image_index = 0;
    }
}

// Damage enemy during specific frame
if (attacking && floor(image_index) == 2) { // adjust frame as needed
    var hitbox = rectangle(x - 16, y - 16, x + 16, y + 16); // your attack range
    with (obj_enemy) {
        if (position_meeting(x, y, other)) {
            hp -= 10;
        }
    }
}