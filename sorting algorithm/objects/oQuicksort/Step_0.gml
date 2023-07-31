/// @description Insert description here
// Define the Quicksort function
function quicksort(arrr, left, right) {
    var i = left;
    var j = right;
    var pivot = arrr[round((left + right) / 2)]; // Choose the pivot element

    // Partition the array into two sub-arrays
    while (i <= j) {
        while (arrr[i] < pivot) i++;
        while (arrr[j] > pivot) j--;
        if (i <= j) {
            var temp = arrr[i];
            arrr[i] = arrr[j];
            arrr[j] = temp;
            i++;
            j--;
        }
    }

    // Recursively sort the sub-arrays
    if (left < j) quicksort(arrr, left, j);
    if (i < right) quicksort(arrr, i, right);
}

//Styles
if(Timer_2 != 0){
	//Timer
	Timer_2--;
	
}
else{
	

	// Example usage
	quicksort(arr, 0, array_length(arr) - 1);
	show_message(string(arr));
	
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




