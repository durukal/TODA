/// @description Init settings
//to run parent code just like super()
event_inherited();
///
hp = 3;
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

//claw ready
attack = false;
inhale = false;
inhale_timer = room_speed *.3;

//breath
breath_timer_initial = random_range(room_speed * 1.75, room_speed * 2.25);
breath_timer = breath_timer_initial;
image_speed = 0;

//jump
//will he jump this chance
jump_chance = 0.5;
//hoe often to check for a jump chance
jump_timer_initial = random_range(room_speed, room_speed * 1.5);
jump_timer = jump_timer_initial;


//states
enum werewolf_states {
	IDLE,
	JUMP_START,
	JUMP,
	JUMP_LAND,
	ATTACK,
	GOT_HURT
}

state = werewolf_states.IDLE;

states_array[werewolf_states.IDLE]			= werewolf_idle_state;
states_array[werewolf_states.JUMP_START]	= werewolf_jump_start_state;
states_array[werewolf_states.JUMP]			= werewolf_jump_state;
states_array[werewolf_states.JUMP_LAND]		= werewolf_jump_land_state;
states_array[werewolf_states.ATTACK]		= werewolf_attack_state;

sprites_array[werewolf_states.IDLE]			= s_werewolf_idle;
sprites_array[werewolf_states.JUMP_START]	= s_werewolf_jump_start;
sprites_array[werewolf_states.JUMP]			= s_werewolf_jump;
sprites_array[werewolf_states.JUMP_LAND]	= s_werewolf_jump_land;
sprites_array[werewolf_states.ATTACK]		= s_werewolf_attack;
sprites_array[werewolf_states.GOT_HURT]		= s_werewolf_hurting;

//mask array
mask_array[werewolf_states.IDLE]			= s_werewolf_idle;
mask_array[werewolf_states.JUMP]			= s_werewolf_jump_start;
mask_array[werewolf_states.JUMP_LAND]		= s_werewolf_jump_land;
mask_array[werewolf_states.JUMP_START]		= s_werewolf_idle;
mask_array[werewolf_states.ATTACK]			= s_werewolf_attack;
	