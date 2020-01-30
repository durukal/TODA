//werewolf_attack_state

//check hp
check_enemy_hp();
//calculate movement
calc_entity_movement();


if (distance_to_object(o_player) < 24) {
	show_debug_message("tp")
	if o_player.hp > 0 {
		state = necromancer_states.TP;
		image_index = 0;
		image_speed = 1;
	}
	
}
//modify state
//attack warning
if image_index = 2 and !inhale {
	inhale = true;	
	alarm[INHALE] = inhale_timer;
	image_speed = 0;
	
}

if attack {
	if floor(image_index) == 2 {
		//create hitbox
		var inst = instance_create_layer(x, y-20, "Projectile", o_necromancer_projectile);
		//ensure hitbox faces
		inst.image_xscale = facing;
		inst.facing = facing;
		//sound
		//if image_index = 3 audio_play_sound(snd_werewolf_attack, 15, false);
	}
	//set paw claw depth
	depth = layer_get_depth(layer_get_id("Player")) -1;

	//modify state
	if image_index >= image_number - sprite_get_speed(sprite_index)/room_speed{
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

