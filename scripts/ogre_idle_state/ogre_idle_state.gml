//bug_idle_state
//check health
check_enemy_hp();
//calculate movement
calc_entity_movement();
//set spd
//hsp = 0;
//vsp = 0;

//change state
if wait_time < 0 {
	facing *= -1;
	start_x = x;
	state = ogre_states.PATROL;
	wait_time = wait_time_initial;
} else {
	wait_time--;	
}

//chase
// dont chase if facing same direction => sign(facing) != sign(o_player.facing)
if distance_to_object(o_player) < chase_distance and o_player.hp > 0  and sign(facing) != sign(o_player.facing) and abs(y - o_player.y) < 24{
	state = ogre_states.CHASE;
	//audio_play_sound(snd_imp_sees_player, 40, false);
}

//apply movement
collision();

//animations
ogre_anim();