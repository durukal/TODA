/// @description 
var _msg = "Find the chest to finish the stage";

if other.stage != 999 {
	//get layer id
	var layer_id = layer_get_id("Stage" + string(other.stage));

	//activate layer
	instance_activate_layer(layer_id);

	//destroy trigger
	instance_destroy(other);
	
	//play spawn sound
	//audio_play_sound(snd_enemies_spawn, 30, false);
	
	//close door
	if room=rm_forest1 and other.stage == 4 and !o_game.chest_collected!=2 {
		var layer_id = layer_get_id("Cave");
		//if layer_get_visible(layer_id) audio_play_sound(snd_door_opening_closing, 50, false);
		layer_set_visible(layer_id, false);
		
		//give player a msg
		show_msg(_msg, 4);
	}else if room=rm_city_4 and other.stage == 1 and !o_game.chest_collected!=2 {
		var layer_id = layer_get_id("Door");
		//if layer_get_visible(layer_id) audio_play_sound(snd_door_opening_closing, 50, false);
		layer_set_visible(layer_id, false);
		
		//give player a msg
		show_msg(_msg, 4);
	}
} else {
	
	if room=rm_forest1 and o_game.chest_collected==2 {
		fade_to_room(rm_forest2, 35, 444, 1, c_black);
	} else if room=rm_forest2 and o_game.chest_collected==2 {
		fade_to_room(rm_forest3, 33, 636, 1, c_black);
	}else if room=rm_city_4 and o_game.chest_collected==2{
		fade_to_room(rm_city_boss, 49, 732, 1, c_black);	
	}else if room=rm_castle_boss {
		o_game.game_over_won = true;
		fade_to_room(rm_game_end, 0, 0, 1, c_black);
		state = states.GAME_END;
		instance_destroy(other);
	}else{
		//give player a msg
		show_msg(_msg, 4);
	}
	
}