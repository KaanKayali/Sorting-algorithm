/// @description Insert description here
// You can write your code in this editor
instance_destroy(oBlock);

// Bubble Sort algorithm
for (var i = array_length(arr) - 1; i >= 1; i--) {
    for (var j = 0; j < i; j++) {
        if (arr[j] > arr[j + 1]) {
            // Swap the elements at positions j and j+1
            var temp = arr[j];
            arr[j] = arr[j + 1];
            arr[j + 1] = temp;
        }
    }
}

// Print the sorted array
show_message(string(arr));

//Printing in blocks
for(var i = 0; i < array_length(arr); i++){
	//irandom_range(0,room_height-1);
	for(var j = 0; j < arr[i]; j++){
		//irandom_range(0,room_height-1);
		instance_create_layer(i,room_height-j,layer,oBlock);
	}
}




