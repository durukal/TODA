//werewolf_attack_state
//check hp
check_enemy_hp();
//calculate movement
calc_entity_movement();

//show_debug_message(image_index)
//modify state
//attack warning
if image_index = 2 and !inhale {
	inhale = true;	
	alarm[INHALE] = inhale_timer;
	image_speed = 0;
	
}

if attack {
	if floor(image_index) == 3 and summon{
		//show_debug_message(irandom(2))
		if irandom(2) == 1{
			var inst = instance_create_layer(x, y-40, "Enemy", o_reaper);
		}
		else{
			var inst = instance_create_layer(x+global.tile_size/2, y, "Enemy", o_ghoul);
		}
		
		//ensure hitbox faces
		inst.image_xscale = facing;
		summon = false;
		//sound
		//if image_index = 3 audio_play_sound(snd_werewolf_attack, 15, false);
	}
	//set paw claw depth
	depth = layer_get_depth(layer_get_id("Player")) -1;
	
	//modify state
	if  image_index > image_number - 1  {
		state = necromancer_states.IDLE;
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
necromancer_anim();

