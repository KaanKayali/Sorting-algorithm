/// @description Insert description here
//Randomize
randomize();

//Create array
TheArray = []
for(var j = 0; j < room_width; j++){
	var randomass = irandom_range(0,room_height)
	if(!Script1(TheArray, randomass)){
		TheArray[j] = randomass;
	}
}

show_debug_message(TheArray);


