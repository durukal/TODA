//imp_idle_state
//check health
check_enemy_hp();

//set spd
hsp = 0;
vsp = 0;

//change state
if wait_time < 0 {
	facing *= -1;
	start_x = x;
	state = imp_states.PATROL;
	wait_time = wait_time_initial;
} else {
	wait_time--;	
}

//chase
if distance_to_object(o_player) < chase_distance and o_player.hp > 0 {
	state = imp_states.CHASE;
	audio_play_sound(snd_imp_sees_player, 40, false);
}

//apply movement
collision();

//animations
imp_anim();