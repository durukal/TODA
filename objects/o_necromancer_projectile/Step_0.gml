/// @description Insert description here
// You can write your code in this editor

hsp = spd * facing;
image_xscale = sign(hsp)*-1;


if abs(xstart - x) > global.tile_size {
	if sign(hsp) var side = bbox_right else var side = bbox_left;
	var t1 = tilemap_get_at_pixel(global.map, side + sign(hsp), y);
	if t1 == SOLID or abs(xstart - x) > global.tile_size * 10 {
		destroy = true;
	}
	collision();
} else {
	x += hsp;
}

if destroy {
	o_necromancer.projectile_ready = false;
	instance_destroy();
}