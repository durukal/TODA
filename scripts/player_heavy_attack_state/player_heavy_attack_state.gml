///player_heavy_attack_state();

//get input
get_input();

//calculate movement
calc_movement();

///check state
if image_index >= image_number - sprite_get_speed(sprite_index)/room_speed {
	if hsp != 0 state = states.WALK else state = states.IDLE;
}

//apply movement
collision();

//check hp
check_player_hp();

//apply animations
animations();
