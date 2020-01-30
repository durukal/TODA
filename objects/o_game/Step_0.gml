/// @description 
//show_debug_overlay(true);
if game_over_lose{
	with(o_player){
		get_input();
		if jump or attack {
			game_restart();
		}
	}
}

//if mouse_check_button_pressed(mb_right){
//	repeat(1){
//		instance_create_layer(mouse_x, mouse_y, "Enemy", o_necromancer_projectile)	
//	}
		
//}

// reduce delay time in game over room
if game_over_won{
	game_over_won_delay--;
}