/// @description Init settings
//to run parent code just like super()
event_inherited();
///
hp = 20;
hsp = 0;
max_hsp_initial = 2;
max_hsp = max_hsp_initial;
vsp = 0;
spd = 1;
hsp_decimal = 0;
vsp_decimal = 0;
facing = -1;

projectile_ready = true;
//actions
can_attack = true;
attack_delay = room_speed/2;

//projectile ready
attack = false;
inhale = false;
inhale_timer = room_speed *.3;

//breath
breath_timer_initial = random_range(room_speed * 1.75, room_speed * 2.25);
breath_timer = breath_timer_initial;
//image_speed = 0;

//run
//target to move to
target_x = 0;
target_y = 0;

//minimum distance to start chasing
//chase_distance = 96;

//wait_time_initial = random_range(room_speed *2, room_speed *4);
wait_time_initial = room_speed *3.5;
alarm[0] = wait_time_initial;

//hurt
hurt_time = room_speed / 2;
summon = true;
//states
enum necromancer_states {
	IDLE,
	ATTACK,
	DIE,
	HURTED,
	SUMMON,
	TP
}

state = necromancer_states.IDLE;

states_array[necromancer_states.IDLE]			= necromancer_idle_state;
states_array[necromancer_states.SUMMON]			= necromancer_summon_state;
states_array[necromancer_states.HURTED]			= necromancer_hurted_state;
states_array[necromancer_states.DIE]			= necromancer_die_state;
states_array[necromancer_states.ATTACK]			= necromancer_attack_state;
states_array[necromancer_states.TP]				= necromancer_tp_state;


sprites_array[necromancer_states.IDLE]			= s_necromancer_idle;
sprites_array[necromancer_states.SUMMON]		= s_necromancer_summon;
//sprites_array[necromancer_states.DIE]			= s_necromancer_die;
sprites_array[necromancer_states.ATTACK]		= s_necromancer_attack;
sprites_array[necromancer_states.TP]			= s_necromancer_idle;


	

	