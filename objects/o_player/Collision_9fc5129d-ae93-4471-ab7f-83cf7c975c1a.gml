if action and !other.open and hp > 0 and (on_ground()) {
		with (other) {
			open = true;
			image_speed = 8;
			audio_play_sound(snd_civillian_save, 50, false);
			o_game.chest_collected++;
			
		}
}
if room == rm_city_4 and o_game.chest_collected==2{
	var layer_id = layer_get_id("Door");
	layer_set_visible(layer_id, true);
	show_msg("You hear a door slide open in the distance...", 4);
}

if !other.open and bbox_bottom == other.bbox_bottom {
	show_msg("Press X to open", 3);	
}