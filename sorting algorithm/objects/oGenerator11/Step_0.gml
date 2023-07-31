/// @description Insert description here
//Styles
if(Timer_2 != 0){
	//Timer
	Timer_2--;
	
}
else{
	// Bubble Sort algorithm
	if(Timer_1 >= 1){
		for (var j = 0; j < Timer_1; j++) {
		    if (arr[j] > arr[j + 1]) {
		        // Swap the elements at positions j and j+1
		        var temp = arr[j];
		        arr[j] = arr[j + 1];
		        arr[j + 1] = temp;
				
				//Aestetics
				redline = j;
				
				
		    }
		}
	
		Timer_1--;
	}
	
	//Completet
	if(Timer_1 == 0){
		pixel.image_blend = c_lime;
	}

	//Timers
	else{
		//Realtime
		realtimer--;
		if(realtimer == 0){	
			realtime++;
			realtimer = 1 * room_speed;
		}

		//milliseconds
		ms++;
		if(ms == room_speed){
			mss++;
			ms = 0;
		}
	}
}

//Printing in blocks
instance_destroy(pixel);
//instance_destroy(oBlockred);
for(var i = 0; i < array_length(arr); i++){
	//irandom_range(0,room_height-1);
	for(var j = 0; j < arr[i]; j++){
		//irandom_range(0,room_height-1);
		instance_create_layer(i*sprite_get_width(object_get_sprite(pixel)),room_height-j*sprite_get_height(object_get_sprite(pixel)),layer,pixel);
		//instance_create_layer(redline,room_height-j*sprite_get_height(object_get_sprite(pixel)),layer,oBlockred);
		
	}
}




