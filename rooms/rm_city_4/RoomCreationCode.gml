o_game.chest_collected=0;

//deactivate spawn layers
for (var i = 1; i < 3; i++) {
	//get layer name	
	var layer_id = ("Stage" + string(i));
	
	//get layer id
	var layer_id = layer_get_id(layer_id);
	
	//deactivate layer
	instance_deactivate_layer(layer_id);
}


