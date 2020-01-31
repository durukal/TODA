/// @description enable death at begin
//cycle trough all enemies to see if they hit
with(o_enemy_parent){
	if distance_to_object(other) < 60 {
		//timer to see how many checks
		//global.timer++;
		if place_meeting(x, y, other){
			if !hurt {
				hurt = true;
			
				//get sign direction from hitbox to enemy
				var _dir = sign(x - other.x);
			
				//ensure objs are not at the same pos
				if _dir == 0 _dir = 1;
			
				//move away from the hitbox
				var knockback_dis = 3;
				hsp = _dir * knockback_dis;
				
				//face the hitbox if on ground
				if on_ground() facing = -_dir;
			
				//damage
				hp -= 1;
				other.sprite_index = s_werewolf_hurting;
				//set hurt timer
				alarm[HURT] = hurt_time;
				
				//screen_shake
				scr_screen_shake(.1, 1.5);
				
				//sound
				if !audio_is_playing(snd_sword_hit) audio_play_sound(snd_sword_hit, 10, false);
				
				var _create = true;
				if instance_exists(o_sword_hit) {
					with(o_sword_hit) if image_index <= 1 _create = false;	
				}
				if _create {
					var inst = instance_create_depth(x, (bbox_top + bbox_bottom)/2, depth -1, o_sword_hit);
					inst.image_xscale = o_player.facing;
					if hp <= 0 {
						var inst = instance_create_depth(x, (bbox_top + bbox_bottom)/2, depth -1, o_sword_hit);
						inst.image_xscale = o_player.facing;
						inst.sprite_index = s_sword_hit2;
					}
				}
			}
		}
	}
}
//destroy arrows that are hit
var inst = instance_place(x, y, o_arrow);
if inst != noone inst.die = true;


die = true;
