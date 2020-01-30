var tpChance = irandom(3)
if  tpChance > 0 {
	show_debug_message("tp'd")
	
	x = x + (facing * 32 * 5)
	facing = sign(o_player.x - x)

}
	state = necromancer_states.ATTACK;
	image_index = 0;
	image_speed = 1;
	
necromancer_anim();