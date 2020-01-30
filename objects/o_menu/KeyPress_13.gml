
switch(menu_index) {

	case 0:
		audio_stop_sound(snd_game);
			audio_play_sound(snd_menu, 15, false);
			//move to the next room on the list
			//get string of the next room i.e "town"
			var next_room_str = room_get_name(room_next(room));
			//get asset index of next room i.e 1, 2, 3.... rooms start at 0
			var next_room_name = asset_get_index(next_room_str);
			fade_to_room(next_room_name, 0, 0, 1, c_black);
		break;
	case 2:
		game_end();
		break;
}
