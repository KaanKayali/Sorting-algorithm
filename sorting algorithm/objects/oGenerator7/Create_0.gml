// Initialize variables
randomize();

// Initialize variables
size = room_height; // Size of the array
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

// Print the array
show_message(string(arr));

//Printing in blocks
for(var k = 0; k < array_length(arr); k++){
	//irandom_range(0,room_height-1);
	for(var j = 0; j < arr[k]; j++){
		//irandom_range(0,room_height-1);
		instance_create_layer(k,room_height-j,layer,oBlock);
	}
}
