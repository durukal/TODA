//reaper_idle_state
//check health
check_enemy_hp();

//calculate movement
calc_entity_movement();
//attack
var attack_dis = 16;
var player_alert = false;

if facing var side = bbox_right else var side = bbox_left;
var t1 = tilemap_get_at_pixel(global.map, side + sign(hsp), y);
if t1 == SOLID state = reaper_states.IDLE;


if (distance_to_object(o_player) < attack_dis) and sign(o_player.x - x) == facing {
	if o_player.hp > 0 {
		if can_attack {
			//attack
			can_attack = false;
			state = reaper_states.ATTACK;
			image_index = 0;
			image_speed = 1;
		}
		player_alert = true;
	}
}


//calculate target movement
if o_player.hp > 0 {
	target_x = o_player.xprevious;
	target_y = o_player.yprevious - sprite_get_height(o_player.sprite_index) / 2;
} else {
	//return to start pos if player has died
	target_x = start_x;
	target_y = start_y;
	//return to idle once at or near start pos
	if abs(x - start_x) < 2 and abs(y - start_y) < 2 state = reaper_states.IDLE;
}

//calculate movement
var _dir = point_direction(x, y, target_x, target_y);
var xx = lengthdir_x(chase_spd, _dir);
var yy = lengthdir_y(chase_spd, _dir);

//if knocked back, don't advance
if !hurt and alarm[KNOCKEDBACK] < 0 {
	//move towards the player
	var buffer = 15;	//stop flicking left/right when at players x
	if (abs(x - o_player.x) > buffer) or (o_player.hp <= 0) hsp = xx;
	vsp = yy;
} else {
	//reaper hurt
	//ensure no vertical movement when knocked back
	vsp = 0;
	//slowdown knockback
	hsp = lerp(hsp, 0, drag);
}

//facing dir
if sign(xx) != 0 facing = sign(xx);

//sound
//if !audio_is_playing(snd_imp_chase) audio_play_sound(snd_imp_chase, 30, false);

//apply movement
collision();

//animations
reaper_anim();