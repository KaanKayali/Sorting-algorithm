/// @description Insert description here
// Define the Quicksort algorithm for an array
var stack = ds_stack_create();
ds_stack_push(stack, 0);
ds_stack_push(stack, array_length(arr) - 1);
if (!ds_stack_empty(stack)) {
    var right = ds_stack_pop(stack);
    var left = ds_stack_pop(stack);
    var i = left;
    var j = right;
    var pivot = arr[round((left + right) / 2)]; // Choose the pivot element
    if (i <= j) {
        while (arr[i] < pivot) i++;
        while (arr[j] > pivot) j--;
        if (i <= j) {
            var temp = arr[i];
            arr[i] = arr[j];
            arr[j] = temp;
            i++;
            j--;
        }
    }
    if (left < j) {
        ds_stack_push(stack, left);
        ds_stack_push(stack, j);
    }
    if (i < right) {
        ds_stack_push(stack, i);
        ds_stack_push(stack, right);
    }
}

// Example usage
//show_message(string(arr));

//Styles
if(Timer_2 != 0){
	//Timer
	Timer_2--;
	
}
else{
	
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
//irandom_range(0,room_height-1);
for(var j = 0; j < it; j++){
	//irandom_range(0,room_height-1);
	instance_create_layer(it*sprite_get_width(object_get_sprite(pixel)),room_height-j*sprite_get_height(object_get_sprite(pixel)),layer,pixel);
	//instance_create_layer(redline,room_height-j*sprite_get_height(object_get_sprite(pixel)),layer,oBlockred);
	
}
it++;



