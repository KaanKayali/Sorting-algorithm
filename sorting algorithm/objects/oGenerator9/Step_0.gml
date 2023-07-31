/// @description Insert description here
// Bubble Sort algorithm
//for (var i = array_length(arr) - 1; i >= 1; i--) {
//    for (var j = 0; j < i; j++) {
//        if (arr[j] > arr[j + 1]) {
//            // Swap the elements at positions j and j+1
//            var temp = arr[j];
//            arr[j] = arr[j + 1];
//            arr[j + 1] = temp;
//        }
//		
//		instance_destroy(oBlock2020);
//		instance_create_layer(x,y,layer,oGenerator9Blocks_1);
//		
//    }
//	
//	
//}

// Bubble Sort algorithm in the Step event converted
if(Timer_1 >= 1){
	//if(Timer_2 < Timer_1){
	//	if (arr[Timer_2] > arr[Timer_2 + 1]) {
    //        // Swap the elements at positions j and j+1
    //        var temp = arr[Timer_2];
    //        arr[Timer_2] = arr[Timer_2 + 1];
    //        arr[Timer_2 + 1] = temp;
    //    }
	//	Timer_2++;
	//}
	for (var j = 0; j < Timer_1; j++) {
	    if (arr[j] > arr[j + 1]) {
	        // Swap the elements at positions j and j+1
	        var temp = arr[j];
	        arr[j] = arr[j + 1];
	        arr[j + 1] = temp;
	    }
	}
	
	Timer_1--;
}
instance_destroy(oBlock);
//Printing in blocks
for(var i = 0; i < array_length(arr); i++){
	//irandom_range(0,room_height-1);
	for(var j = 0; j < arr[i]; j++){
		//irandom_range(0,room_height-1);
		instance_create_layer(i*sprite_get_width(object_get_sprite(pixel)),room_height-j*sprite_get_height(object_get_sprite(pixel)),layer,pixel);
	}
}

if(Timer_1 == 0){
	pixel.image_blend = c_lime;
}

