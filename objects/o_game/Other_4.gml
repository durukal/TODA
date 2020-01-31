/// @description 
// tiles
// get tile map

civilians_freed = 0;

//Chests
chest_collected = 0;
global.map = layer_tilemap_get_id("Collisions");
global.tile_size = 32;

//player create
if room != rm_init and room != rm_menu and !instance_exists(o_player){
		instance_create_layer(x, y, "Player", o_player);
}
//cancel any messages
alarm[DISPLAY_MSG] = 0;

//play music

if room == rm_game_end {
	// stop game music
	audio_stop_sound(snd_game);
	//play end game music
	//audio_play_sound(snd_menu, 10, false);
}else if room == rm_menu{
	audio_play_sound(snd_game, 20, false);
}

else {
	// play game music
	if audio_is_playing(snd_game) audio_stop_sound(snd_game);
}

//switch(room){
//	case rm_town:
//	civilians = 6;
//	break;
//	case rm_forest1:
//	chests = 0;
//	break;
//	case rm_forest1:
	
//}