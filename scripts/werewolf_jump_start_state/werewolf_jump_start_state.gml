//werewolf_jump_start_state

//check hp
check_enemy_hp();
//calculate_movement
calc_entity_movement();

//modify state
if image_index  >= image_number - sprite_get_speed(sprite_index)/room_speed{
	state = werewolf_states.JUMP;
	vsp = jump_spd;
	//if on_screen(40) audio_play_sound(snd_jump, 20, false);
}

//apply movement
collision();

//animations
werewolf_anim();