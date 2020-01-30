/// @description Init scripts
// This script runs when instance is created

hsp = 0;
vsp = 0;
max_hsp = 2;
walk_speed = 1.5;
hsp_decimal = 0;
vsp_decimal = 0;
jump_spd = -5;
jump_dampner = 2.5;
jumps_initial = 2;
jumps = jumps_initial;
//friction
drag = .12;

//facing left <= 0 1 => right
facing = 1;

//set rm_00 start
room_start_pos_x = 50;
room_start_pos_y = 155;
room_start_facing = 1;
x = room_start_pos_x;
y = room_start_pos_y;
//facing dir
facing = room_start_facing;

//hurt
flash_counter = 0;
hurt = false;
hurt_time = room_speed;
hp = 100;
max_hp = hp;

// civilians
civilian_value = 50;

//chests
chest_value = 100;

//lives
lives_initial = 2;
lives = lives_initial;
lives_value = 1500;
//movement
left = 0;
right = 0;
up = 0;
down = 0;
attack = 0;
jump = 0;
jump_held = 0;
block = 0;

//camera
o_camera.follow = o_player;

//states
enum states {
	IDLE,
	WALK,
	JUMP,
	ATTACK,
	HEAVY_ATTACK,
	BLOCK,
	CROUCH,
	CROUCH_BLOCK,
	HURTING,
	KNOCKBACK,
	DIE,
	COMBO,
	GAME_END
	
}

state = states.IDLE;

//states array
states_array[states.IDLE]			= player_idle_state;
states_array[states.WALK]			= player_walk_state;
states_array[states.JUMP]			= player_jump_state;
states_array[states.ATTACK]			= player_attack_state;
states_array[states.HEAVY_ATTACK]	= player_heavy_attack_state;
states_array[states.BLOCK]			= player_block_state;
states_array[states.CROUCH]			= player_crouch_state;
states_array[states.CROUCH_BLOCK]	= player_crouch_block_state;
states_array[states.HURTING]		= player_hurting_state;
states_array[states.KNOCKBACK]		= player_knockback_state;
states_array[states.DIE]		    = player_die_state;
states_array[states.GAME_END]		= player_game_end_state;
//states_array[states.COMBO]		    = player_combo_state;


//sprites array
sprites_array[states.IDLE]			= s_player_idle;
sprites_array[states.WALK]			= s_player_run;
sprites_array[states.JUMP]			= s_player_jump;
sprites_array[states.ATTACK]		= s_player_attack_light;
sprites_array[states.HEAVY_ATTACK]	= s_player_attack_heavy;
sprites_array[states.BLOCK]			= s_player_block;
sprites_array[states.CROUCH]		= s_player_crouch;
sprites_array[states.CROUCH_BLOCK]	= s_player_crouch_block;
sprites_array[states.HURTING]		= s_player_hurting;
sprites_array[states.DIE]			= s_player_die;
sprites_array[states.GAME_END]		= s_player_die;

//mask array
mask_array[states.IDLE]			= s_player_idle;
mask_array[states.WALK]			= s_player_idle;
mask_array[states.JUMP]			= s_player_idle;
mask_array[states.ATTACK]		= s_player_idle;
mask_array[states.HEAVY_ATTACK]	= s_player_idle;
mask_array[states.BLOCK]		= s_player_idle;
mask_array[states.CROUCH]		= s_player_crouch;
mask_array[states.CROUCH_BLOCK]	= s_player_crouch;
mask_array[states.HURTING]		= s_player_idle;
mask_array[states.KNOCKBACK]	= s_player_idle;
mask_array[states.DIE]			= s_player_die;
mask_array[states.GAME_END]			= s_player_die;