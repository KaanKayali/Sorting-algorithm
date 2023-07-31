/// @description Insert description here
//Randomize
randomize();

// Create a random ass structure
for(var i = 0; i < room_width; i++){
	for(var j = 0; j < i; j++){
		//irandom_range(0,room_height-1);
		instance_create_layer(i,irandom_range(0,room_height),layer,oBlock);
	}
}








