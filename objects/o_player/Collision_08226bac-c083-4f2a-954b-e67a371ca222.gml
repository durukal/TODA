if action and !other.open and hp > 0 and (on_ground()) {
		with (other) {
			open = true;
			image_speed = 1;
			audio_play_sound(snd_civillian_save, 50, false);
			o_game.civilians_freed++;
		}
}