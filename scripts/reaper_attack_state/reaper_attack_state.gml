//reaper_attack_state

//check hp
check_enemy_hp();
//calculate movement
hsp = 0;
vsp = 0;
calc_entity_movement();

//modify state
//attack warning
if image_index = 1 and !inhale {
	//show_debug_message("aa")
	inhale = true;	
	alarm[INHALE] = inhale_timer;
	image_speed = 0;
	
}


if attack {
	if image_index >= 2 and image_index <=4 {
		
		//create hitbox
		var inst = instance_create_layer(x, y, "Enemy", o_reaper_attack_hitbox);
		//ensure hitbox faces
		inst.image_xscale = -facing;
		//sound
		if image_index = 2 audio_play_sound(snd_reaper_attack, 15, false);
	}
	//set paw claw depth
	depth = layer_get_depth(layer_get_id("Player")) -1;

	//modify state
	if image_index >= image_number - sprite_get_speed(sprite_index)/room_speed{
		state = reaper_states.IDLE;
		alarm[CAN_ATTACK] = attack_delay;
		image_index = 0;
		image_speed = 1;
		depth = layer_get_depth(layer_get_id("Enemy"));
		inhale = false;
		attack = false;
	}	
	
}

//apply movement
//collision();

//animations
reaper_anim();

