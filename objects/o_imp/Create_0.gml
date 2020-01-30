/// @description Init settings
//to run parent code just like super()
event_inherited();
///
hp = 3;
hsp = 0;
max_hsp_initial = .5;
max_hsp = max_hsp_initial;
vsp = 0;
spd = .5;
hsp_decimal = 0;
vsp_decimal = 0;
facing = choose(-1, 1);
drag = 0.04;

//patrol
//how far patrol
patrol_dis = 96;
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
chase_spd = 1;
//minimum distance to start chasing
chase_distance = 100;

//hurt
hurt_time = room_speed / 2;

//states
enum imp_states {
	IDLE,
	PATROL,
	CHASE
}

state = imp_states.IDLE;

states_array[imp_states.IDLE]			= imp_idle_state;
states_array[imp_states.PATROL]			= imp_patrol_state;
states_array[imp_states.CHASE]			= imp_chase_state;


sprites_array[imp_states.IDLE]			= s_imp_idle;
sprites_array[imp_states.PATROL]		= s_imp_idle;
sprites_array[imp_states.CHASE]			= s_imp_patrol;


////mask array
mask_array[imp_states.IDLE]				= s_imp_idle;
mask_array[imp_states.PATROL]			= s_imp_patrol;
mask_array[imp_states.CHASE]			= s_imp_patrol;

