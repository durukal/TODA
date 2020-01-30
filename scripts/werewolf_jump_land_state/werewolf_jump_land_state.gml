//werewolf_jump_land_state

//check hp
check_enemy_hp();
//calculate movement



//modify state
if image_index  >= image_number - sprite_get_speed(sprite_index)/room_speed{
	state = werewolf_states.IDLE;
	image_index = 0;
	image_speed = 0;
}


//apply movement
collision();

//animations
werewolf_anim();