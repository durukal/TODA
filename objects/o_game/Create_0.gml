//macros
macros();

global.grav = 0.25;

//global.timer = 0;

display_set_gui_size(720, 360);
//how many sparks come off gems
gem_sparks = 6;

//game over and we lost
game_over_lose = false;

//game over and we won
game_over_won = false;

//score delay
game_over_won_delay = room_speed * 3;

civilians = 0;
civilians_freed = 0;

//Chests
chests = 0;
chest_collected = 0;
restart = false;

// main menu
current_frame = 0;

//fade in menu
fade_in = true;
alpha = 1;
fade_speed = 0.02;

//final room
msg = "";

//tooltip messages
//msg#, properties
//0 - pre msg
//1 - post msg
//2 - keyboard button
//3 - pad button
//4 - time on screen
//5 - has it been shown this game?

//create grid
global.tooltip = ds_grid_create(8, 6);

//attack
global.tooltip[# 0, 0] = "Press";
global.tooltip[# 0, 1] = "to Attack";
global.tooltip[# 0, 2] = "Q";
global.tooltip[# 0, 3] = "B";
global.tooltip[# 0, 4] = 3;
global.tooltip[# 0, 5] = 0;

//block
global.tooltip[# 1, 0] = "Press";
global.tooltip[# 1, 1] = "to Block";
global.tooltip[# 1, 2] = "E";
global.tooltip[# 1, 3] = "Shoulder Buttons";
global.tooltip[# 1, 4] = 3;
global.tooltip[# 1, 5] = 0;

//Jump
global.tooltip[# 2, 0] = "Press";
global.tooltip[# 2, 1] = "to Jump";
global.tooltip[# 2, 2] = "Space";
global.tooltip[# 2, 3] = "A";
global.tooltip[# 2, 4] = 3;
global.tooltip[# 2, 5] = 0;

//Double Jump
global.tooltip[# 3, 0] = "Press";
global.tooltip[# 3, 1] = "again to Double Jump";
global.tooltip[# 3, 2] = "Space";
global.tooltip[# 3, 3] = "A";
global.tooltip[# 3, 4] = 3;
global.tooltip[# 3, 5] = 0;

//Duck
global.tooltip[# 4, 0] = "Press";
global.tooltip[# 4, 1] = "to Duck";
global.tooltip[# 4, 2] = "Down";
global.tooltip[# 4, 3] = "Down";
global.tooltip[# 4, 4] = 3;
global.tooltip[# 4, 5] = 0;

//Move
global.tooltip[# 5, 0] = "Press";
global.tooltip[# 5, 1] = "to Move";
global.tooltip[# 5, 2] = "Arrow Keys";
global.tooltip[# 5, 3] = "";
global.tooltip[# 5, 4] = 3;
global.tooltip[# 5, 5] = 0;

//Narrator
global.tooltip[# 6, 0] = "You heard screams";
global.tooltip[# 6, 1] = "inn.";
global.tooltip[# 6, 2] = "outside of the";
global.tooltip[# 6, 3] = "";
global.tooltip[# 6, 4] = 3;
global.tooltip[# 6, 5] = 0;

//Narrator
global.tooltip[# 7, 0] = "You";
global.tooltip[# 7, 1] = "hurry.";
global.tooltip[# 7, 2] = "must";
global.tooltip[# 7, 3] = "";
global.tooltip[# 7, 4] = 3;
global.tooltip[# 7, 5] = 0;