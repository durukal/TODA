//hellkingh_idle
//check health
check_enemy_hp();
//calculate movement
calc_entity_movement();
//set spd
//hsp = 0;
//vsp = 0;


// dont chase if facing same direction => sign(facing) != sign(o_player.facing)
if distance_to_object(o_player) < chase_distance and o_player.hp > 0  {
	state = red_prince_states.CHASE;
	show_debug_message("chase")
	image_index = 0
	image_speed = 1
	//audio_play_sound(snd_imp_sees_player, 40, false);
}

//apply movement
collision();

//animations
red_prince_anim();