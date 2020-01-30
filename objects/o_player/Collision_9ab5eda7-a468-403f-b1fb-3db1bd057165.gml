with(other) {
	if can_pickup {
		die = true;
		with(other) {
			if hp < max_hp hp += 25;
			if hp>=max_hp hp=max_hp;
		}
		audio_play_sound(snd_pickup_hp, 15, false);
	}	
}