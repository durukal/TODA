/// @descr fade_to_room(target_room, target_x, target_y, facing, colour);
/// @args target_room
/// @args target_x
/// @args target_y
/// @args facing
/// @args colour

var _fade = instance_create_layer(x, y, "Fade", o_fade);
with(_fade){
	target_rm =argument0;
	target_x  =argument1;
	target_y  =argument2;
	facing	  =argument3;
	col		  =argument4;
	
}
