/// @description Insert description here

if open{
	//calculate movement for civilians
	hsp += walk_speed;

	//limit speed

	hsp = min(abs(hsp), max_hsp) * facing;

	x += hsp;
	time += 1; 
	if time > (room_speed * 2) {  
	    instance_destroy();  
	}  

}
