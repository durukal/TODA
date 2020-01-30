

//check hp
check_enemy_hp();
//calculate movement
calc_entity_movement();

//modify state
//attack warning
if floor(image_index) = 1 and !inhale {
	inhale = true;	
	alarm[INHALE] = inhale_timer;
	image_speed = 0;
	
}

if attack {
	if image_index >= 2 and image_index <= 6 {
		//create hitbox
		var inst = instance_create_layer(x, y, "Enemy", o_hell_knight_hitbox);
		//ensure hitbox faces
		inst.image_xscale = -facing;
		//sound
		//if image_index = 3 audio_play_sound(snd_ogre_attack, 15, false);
	}
	//set paw claw depth
	depth = layer_get_depth(layer_get_id("Player")) -1;

	//modify state
	if image_index >= image_number - sprite_get_speed(sprite_index)/room_speed{
		state = hell_knight_states.IDLE;
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
hell_knight_anim();

