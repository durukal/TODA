/// @description enable death at begin
//cycle trough all enemies to see if they hit
with(instance_place(x, y, o_player)) {
	process_enemy_attack(30, 20, 50);
}


die = true;
