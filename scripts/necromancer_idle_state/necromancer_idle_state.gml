
check_enemy_hp();

//calculate movement
calc_entity_movement();

if image_index = 2 and !inhale {
	inhale = true;	
	alarm[INHALE] = inhale_timer;
	image_speed = 0;
	
}

//attack
// dont chase if facing same direction => sign(facing) != sign(o_player.facing)
var player_alert = false;
var attack_distance = global.tile_size * 7
if (distance_to_object(o_player) < attack_distance) and sign(o_player.x - x) = facing {
	if o_player.hp > 0 {
		if can_attack {
			can_attack = false;
			if random(7) <=3 {
				summon = true;
				state = necromancer_states.SUMMON;

			}else{

				state = necromancer_states.ATTACK;
			
			}
			image_index = 0;
			image_speed = 1;
		}
		player_alert = true;
	}
}
//apply movement
//collision();

//animations
necromancer_anim();