/// @description Init settings
//to run parent code just like super()
event_inherited();
///
hp = 6;
hsp = 0;
max_hsp_initial = 4;
max_hsp = max_hsp_initial;
vsp = 0;
spd = 2;
jump_spd = -4;
hsp_decimal = 0;
vsp_decimal = 0;
facing = -1;


//actions
can_attack = true;
attack_delay = room_speed;

//claw ready
attack = false;
inhale = false;
inhale_timer = room_speed *.1;

//breath
//breath_timer_initial = random_range(room_speed * 2, room_speed * 2.25);
breath_timer_initial = room_speed;
breath_timer = breath_timer_initial;
image_speed = 0;

//jump
//will he jump this chance
jump_chance = 0;
//hoe often to check for a jump chance
jump_timer_initial = room_speed * 2;
jump_timer = jump_timer_initial;

