/// @description Init settings
//to run parent code just like super()
event_inherited();
///
hp = 2;
hsp = 0;
max_hsp_initial = 2;
max_hsp = max_hsp_initial;
vsp = 0;
spd = 0.5;
hsp_decimal = 0;
vsp_decimal = 0;
facing = choose(-1, 1);
//facing = 1;

//actions
can_attack = true;
attack_delay = room_speed;

//mace ready
attack = false;
inhale = false;
inhale_timer = room_speed *.19;

//breath
breath_timer_initial = random_range(room_speed * 1.75, room_speed * 2.00);
breath_timer = breath_timer_initial;
//image_speed = 0;

//patrol
//how far patrol
patrol_dis = 64;
//patrol start position
start_x = x;
start_y = y;
//how long to wait before patrol
wait_time_initial = random_range(room_speed *2, room_speed *4);
wait_time = wait_time_initial;

//chase
//target to move to
target_x = 0;
target_y = 0;
chase_spd = 2.5;
//minimum distance to start chasing
chase_distance = global.tile_size*4;

//hurt
hurt_time = room_speed / 2;

//states
enum ghoul_states {
	IDLE,
	ATTACK,
	DIE,
	HURTED,
	PATROL,
	CHASE
}

state = ghoul_states.IDLE;

states_array[ghoul_states.IDLE]			= ghoul_idle_state;
states_array[ghoul_states.PATROL]		= ghoul_patrol_state;
states_array[ghoul_states.HURTED]		= ghoul_hurted_state;
states_array[ghoul_states.DIE]			= ghoul_die_state;
states_array[ghoul_states.ATTACK]		= ghoul_attack_state;
states_array[ghoul_states.CHASE]		= ghoul_chase_state;


sprites_array[ghoul_states.IDLE]		= s_ghoul_idle;
sprites_array[ghoul_states.PATROL]		= s_ghoul_patrol;
sprites_array[ghoul_states.DIE]			= s_ghoul_die;
sprites_array[ghoul_states.ATTACK]		= s_ghoul_attack;
sprites_array[ghoul_states.HURTED]		= s_ghoul_hurted;
sprites_array[ghoul_states.CHASE]		= s_ghoul_patrol;

//mask array
mask_array[ghoul_states.IDLE]			= s_ghoul_idle;
mask_array[ghoul_states.PATROL]			= s_ghoul_patrol;
mask_array[ghoul_states.DIE]			= s_ghoul_die;
mask_array[ghoul_states.ATTACK]			= s_ghoul_attack;
mask_array[ghoul_states.HURTED]			= s_ghoul_hurted;
mask_array[ghoul_states.CHASE]			= s_ghoul_patrol;
	