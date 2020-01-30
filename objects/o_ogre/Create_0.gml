/// @description Init settings
//to run parent code just like super()
event_inherited();
///
hp = 4;
hsp = 0;
max_hsp_initial = 2;
max_hsp = max_hsp_initial;
vsp = 0;
spd = 1.5;
hsp_decimal = 0;
vsp_decimal = 0;
facing = choose(-1,1);

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
patrol_dis = global.map * 5;
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
chase_distance = 96;

//hurt
hurt_time = room_speed / 2;

//states
enum ogre_states {
	IDLE,
	ATTACK,
	DIE,
	HURTED,
	PATROL,
	CHASE
}

state = ogre_states.IDLE;

states_array[ogre_states.IDLE]			= ogre_idle_state;
states_array[ogre_states.PATROL]		= ogre_patrol_state;
states_array[ogre_states.HURTED]		= ogre_hurted_state;
states_array[ogre_states.DIE]			= ogre_die_state;
states_array[ogre_states.ATTACK]		= ogre_attack_state;
states_array[ogre_states.CHASE]			= ogre_chase_state;


sprites_array[ogre_states.IDLE]			= s_ogre_idle;
sprites_array[ogre_states.PATROL]		= s_ogre_patrol;
sprites_array[ogre_states.DIE]			= s_ogre_die;
sprites_array[ogre_states.ATTACK]		= s_ogre_attack;
sprites_array[ogre_states.HURTED]		= s_ogre_hurted;
sprites_array[ogre_states.CHASE]		= s_ogre_patrol;

//mask array
mask_array[ogre_states.IDLE]			= s_ogre_idle;
mask_array[ogre_states.PATROL]			= s_ogre_patrol;
mask_array[ogre_states.DIE]				= s_ogre_die;
mask_array[ogre_states.ATTACK]			= s_ogre_attack;
mask_array[ogre_states.HURTED]			= s_ogre_hurted;
mask_array[ogre_states.CHASE]			= s_ogre_patrol;
	