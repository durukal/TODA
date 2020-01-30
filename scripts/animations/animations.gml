///animations();
sprite_index = sprites_array[state];
mask_index = mask_array[state];
image_xscale = facing;

switch(state){
	case states.JUMP:
	if vsp < 0 image_index = 0 else image_index = 4;
	break;
	
	case states.ATTACK:
	if !on_ground() sprite_index = s_player_attack_air_1;
	else {
	//on ground
	if hsp != 0 sprite_index = s_player_attack_light
	else sprite_index = s_player_attack_heavy;
	}
	
	break;
	
	case states.IDLE:
	if on_ground() sprite_index = s_player_idle;
	break;
	
	case states.HURTING:
		if !on_ground(){
			sprite_index = s_player_jump;
		}
	break;
	
}