//die 
if hp <= 0 {
	//hp drop
	var _chance = random(1);
	if _chance <= hp_drop_chance {
		instance_create_layer(x, bbox_top, "Healthdrops", o_hp);
	}
	
	//score
	switch(object_index){
		case o_werewolf:
		score += 60;
		break;
		case o_imp:
		score += 30;
		break;
		case o_ogre:
		score += 70;
		break;
		case o_ghoul:
		score += 50;
		break;
		case o_fire_golem:
		score += 80;
		break;
		case o_necromancer:
		score += 2500;
		var layer_id = layer_get_id("Portal");
		layer_set_visible(layer_id, false);
		show_msg("As you killed the Court wizard Portal Closed...",4);
		break;
		case o_reaper:
		score += 100;
		break;
		case o_hellknight:
		score += 1000;
		show_msg("As you killed the Hell Knight he told you that he was an angel once...",4);
		break;
		case o_redprince:
		score += 1500;
		show_msg("Please avenge us....",4);
		break;
	}
	
	//screen_shake
	scr_screen_shake(.15, -1);
	instance_destroy();
	audio_play_sound(snd_enemy_dying, 10, false);
}