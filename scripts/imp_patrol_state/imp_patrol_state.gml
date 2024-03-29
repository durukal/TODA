//imp_patrol_state
//check health
check_enemy_hp();

//set spd
hsp = spd * facing;
vsp = 0;

//change state
if abs(start_x - x) > patrol_dis {
	state = imp_states.IDLE;	
}

//turn around if wall found
if facing var side = bbox_right else var side = bbox_left;
var t1 = tilemap_get_at_pixel(global.map, side + sign(hsp), y);
if t1 == SOLID state = imp_states.IDLE;

//chase
if distance_to_object(o_player) < chase_distance and o_player.hp > 0 {
	state = imp_states.CHASE;
	audio_play_sound(snd_imp_sees_player, 40, false);
}

//apply movement
collision();

//animations
imp_anim();