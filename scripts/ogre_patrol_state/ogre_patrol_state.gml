//werewolf_idle_state
//breathing();
//check hp
check_enemy_hp();
//calculate movement
calc_entity_movement();

//set spd
hsp = spd * facing;
//vsp = 0;

//change state
if abs(start_x - x) > patrol_dis {
	state = ogre_states.IDLE;	
}

//turn around if wall found
if facing var side = bbox_right else var side = bbox_left;
var t1 = tilemap_get_at_pixel(global.map, side + sign(hsp), y);
if t1 == SOLID state = ogre_states.IDLE;

//chase
if distance_to_object(o_player) < chase_distance and o_player.hp > 0 and abs(y - o_player.y) < 24{
	state = ogre_states.CHASE;
	image_index = 0;
	image_speed = 1;
	//audio_play_sound(snd_imp_sees_player, 40, false);
}

//apply movement
collision();

//animations
ogre_anim();