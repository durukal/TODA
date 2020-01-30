//ogre_attack_state

//check hp
check_enemy_hp();
//calculate movement
calc_entity_movement();

//modify state
//attack warning
if image_index = 2 and !inhale {
	inhale = true;	
	alarm[INHALE] = inhale_timer;
	image_speed = 0;
	
}

if attack {
	if image_index >= 2 and image_index <= 8 {
		//create hitbox
		var inst = instance_create_layer(x, y, "Enemy", o_fire_golem_attack_hitbox);
		//ensure hitbox faces
		inst.image_xscale = -facing;
		//sound
		if image_index = 2 or image_index = 6 audio_play_sound(snd_fire_golem_attack, 15, false);
	}
	//set paw claw depth
	depth = layer_get_depth(layer_get_id("Player")) -1;

	//modify state
	if image_index >= image_number - sprite_get_speed(sprite_index)/room_speed{
		state = fire_golem_states.IDLE;
		alarm[CAN_ATTACK] = attack_delay;
		image_index = 0;
		image_speed = 1;
		depth = layer_get_depth(layer_get_id("Enemy"));
		inhale = false;
		attack = false;
	}	
	
}

//apply movement
collision();

//animations
fire_golem_anim();

