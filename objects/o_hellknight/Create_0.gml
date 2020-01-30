/// @description Init settings
//to run parent code just like super()
event_inherited();
///
hp = 15;
hsp = 0;
max_hsp_initial = 2;
max_hsp = max_hsp_initial;
vsp = 0;
spd = 2;
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
chase_distance = global.tile_size * 6;
//hurt
hurt_time = room_speed / 2;

//states
enum hell_knight_states {
	IDLE,
	ATTACK,
	JUMP,
	CHASE
}

state = hell_knight_states.IDLE;

states_array[hell_knight_states.IDLE]			= hell_knight_idle_state;
states_array[hell_knight_states.ATTACK]			= hell_knight_attack_state;
states_array[hell_knight_states.JUMP]			= hell_knight_jump_state;
states_array[hell_knight_states.CHASE]			= hell_knight_chase_state;


sprites_array[hell_knight_states.IDLE]			= s_hell_knight_idle;
sprites_array[hell_knight_states.ATTACK]		= s_hell_knight_attack;
sprites_array[hell_knight_states.JUMP]			= s_hell_knight_jump;
sprites_array[hell_knight_states.CHASE]			= s_hell_knight_chase;

//mask array
mask_array[hell_knight_states.IDLE]			= s_hell_knight_idle;
mask_array[hell_knight_states.JUMP]			= s_hell_knight_jump;
mask_array[hell_knight_states.ATTACK]			= s_hell_knight_attack;
mask_array[hell_knight_states.CHASE]			= s_hell_knight_chase;
	