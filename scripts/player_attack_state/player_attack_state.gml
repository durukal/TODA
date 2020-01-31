///player_attack_state();

//get input
get_input();

//if hsp != 0 {
//	if facing {
//		right = 1;
//		left = 0;
//	} else {
//		right = 0;
//		left = 1;
//	}	
//}
//calculate movement
calc_movement();

///check state
if image_index > image_number - 2  {
	if !on_ground() state = states.JUMP else
	if hsp != 0 state = states.WALK else state = states.IDLE;
	air_attack = false;
}

if jump {
	jumped();
	state = states.ATTACK;	
}

if air_attack{
	if image_index >= 1 and image_index <=2{
		var inst = instance_create_layer(x, y, "Player", o_player_air_attack_hitbox);
		
	inst.image_xscale = facing;
	if image_index == 0 audio_play_sound(snd_sword_swing, 20, false);
	}
	
}else{
	//create hitbox
if image_index >= 2 and image_index <= 4 {
	var inst = instance_create_layer(x, y, "Player", o_player_attack_hitbox);
	inst.image_xscale = facing;
	if image_index == 1 audio_play_sound(snd_sword_swing, 20, false);
}
	
}


//enable smaller jumps
if vsp < 0 and !jump_held vsp = max(vsp, jump_spd/jump_dampner);

//apply movement
facing = facing;
collision();

//check hp
check_player_hp();

//apply animations
animations();
