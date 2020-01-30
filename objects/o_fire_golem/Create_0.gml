/// @description Init settings
//to run parent code just like super()
event_inherited();
///
hp = 4;
hsp = 0;
max_hsp_initial = 2;
max_hsp = max_hsp_initial;
vsp = 0;
spd = 0.8;
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
inhale_timer = room_speed *.3;

//breath
breath_timer_initial = random_range(room_speed * 1.75, room_speed * 2.25);
breath_timer = breath_timer_initial;
//image_speed = 0;

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
chase_distance = 64;

//hurt
hurt_time = room_speed / 2;

//states
enum fire_golem_states {
	IDLE,
	ATTACK,
	DIE,
	HURTED,
	PATROL,
	CHASE
}

state = fire_golem_states.IDLE;

states_array[fire_golem_states.IDLE]		= fire_golem_idle_state;
states_array[fire_golem_states.PATROL]		= fire_golem_patrol_state;
states_array[fire_golem_states.HURTED]		= fire_golem_hurted_state;
states_array[fire_golem_states.DIE]			= fire_golem_die_state;
states_array[fire_golem_states.ATTACK]		= fire_golem_attack_state;
states_array[fire_golem_states.CHASE]		= fire_golem_chase_state;


sprites_array[fire_golem_states.IDLE]		= s_fire_golem_idle;
sprites_array[fire_golem_states.PATROL]		= s_fire_golem_patrol;
sprites_array[fire_golem_states.DIE]		= s_fire_golem_die;
sprites_array[fire_golem_states.ATTACK]		= s_fire_golem_attack;
sprites_array[fire_golem_states.HURTED]		= s_fire_golem_hurted;
sprites_array[fire_golem_states.CHASE]		= s_fire_golem_patrol;

//mask array
mask_array[fire_golem_states.IDLE]			= s_fire_golem_idle;
mask_array[fire_golem_states.PATROL]		= s_fire_golem_patrol;
mask_array[fire_golem_states.DIE]			= s_fire_golem_die;
mask_array[fire_golem_states.ATTACK]		= s_fire_golem_attack;
mask_array[fire_golem_states.HURTED]		= s_fire_golem_hurted;
mask_array[fire_golem_states.CHASE]			= s_fire_golem_patrol;
	