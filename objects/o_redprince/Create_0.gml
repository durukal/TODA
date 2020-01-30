/// @description Init settings
//to run parent code just like super()
event_inherited();
///
hp = 15;
hsp = 0;
max_hsp_initial = 2;
max_hsp = max_hsp_initial;
vsp = 0;
spd = 3;
jump_spd = -6;
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
//patrol
//how far patrol
patrol_dis = 96;
//patrol start position
start_x = x;
start_y = y;


target_x = 0;
target_y = 0;
chase_spd = 1;
//minimum distance to start chasing
chase_distance = global.tile_size * 5;
//hurt
hurt_time = room_speed / 2;

//states
enum red_prince_states {
	IDLE,
	ATTACK,
	JUMP,
	CHASE
}

state = red_prince_states.IDLE;

states_array[red_prince_states.IDLE]			=red_prince_idle_state;
states_array[red_prince_states.ATTACK]			=red_prince_attack_state;
states_array[red_prince_states.CHASE]			=red_prince_chase_state;


sprites_array[red_prince_states.IDLE]			= s_red_prince_idle;
sprites_array[red_prince_states.ATTACK]		= s_red_prince_attack;
sprites_array[red_prince_states.CHASE]			= s_red_prince_chase;

//mask array
//mask_array[red_prince_states.IDLE]			= s_red_prince_idle;
//mask_array[red_prince_states.JUMP]			= s_red_prince_jump;
//mask_array[red_prince_states.CHASE]			= s_red_prince_chase;
	