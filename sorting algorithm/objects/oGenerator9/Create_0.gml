// Initialize variables
randomize();

// Initialize variables
pixel = oBlock;
size = room_height/sprite_get_height(object_get_sprite(pixel)); // Size of the array
arr = array_create(size); // Create an array of the specified size

// Populate the array with numbers between 1 and 720
for (var i = 0; i < size; i++) {
    arr[i] = i + 1;
}

// Shuffle the array using the Fisher-Yates algorithm
for (var i = size - 1; i >= 1; i--) {
    var j = irandom_range(0, i);
    var temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
}



//// Bubble Sort algorithm
//for (var i = array_length(arr) - 1; i >= 1; i--) {
//    for (var j = 0; j < i; j++) {
//        if (arr[j] > arr[j + 1]) {
//            // Swap the elements at positions j and j+1
//            var temp = arr[j];
//            arr[j] = arr[j + 1];
//            arr[j + 1] = temp;
//        }
		
		
		
		
//    }
	
//	instance_create_layer(x,y,layer,oGenerator9Blocks_1);
//}
//for(var i = 0; i < array_length(oGenerator9.arr); i++){
//	//irandom_range(0,room_height-1);
//	for(var j = 0; j < oGenerator9.arr[i]; j++){
//		//irandom_range(0,room_height-1);
//		instance_create_layer(i*sprite_get_width(object_get_sprite(pixel)),room_height-j*sprite_get_height(object_get_sprite(pixel)),layer,pixel);
//	}

//Timer
Timer_1 = array_length(arr)-1;
Timer_2 = 1 * room_speed;