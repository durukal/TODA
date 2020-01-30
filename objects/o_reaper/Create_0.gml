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


//actions
can_attack = true;
attack_delay = room_speed;

//scythe ready
attack = false;
inhale = false;
inhale_timer = room_speed *.3;

//breath
breath_timer_initial = random_range(room_speed * 1.75, room_speed * 2.25);
breath_timer = breath_timer_initial;

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
enum reaper_states {
	IDLE,
	PATROL,
	CHASE,
	ATTACK
}

state = reaper_states.IDLE;

states_array[reaper_states.IDLE]			= reaper_idle_state;
states_array[reaper_states.PATROL]			= reaper_patrol_state;
states_array[reaper_states.CHASE]			= reaper_chase_state;
states_array[reaper_states.ATTACK]			= reaper_attack_state;


sprites_array[reaper_states.IDLE]			= s_reaper_idle;
sprites_array[reaper_states.PATROL]			= s_reaper_idle;
sprites_array[reaper_states.CHASE]			= s_reaper_patrol;
sprites_array[reaper_states.ATTACK]			= s_reaper_attack;


////mask array
mask_array[reaper_states.IDLE]				= s_reaper_idle;
mask_array[reaper_states.PATROL]			= s_reaper_idle;
mask_array[reaper_states.CHASE]				= s_reaper_idle;
mask_array[reaper_states.ATTACK]			= s_reaper_idle;

