// Initialize variables
randomize();

// Initialize variables
size = 720; // Size of the array
arr = array_create(size); // Create an array of the specified size
set = ds_list_create(); // Create a set data structure
var i = 0;

// Generate random numbers with no duplicates
while (i < size) {
    var num = irandom_range(1, 720); // Generate a random number between 1 and 720 (inclusive)
    if (!ds_list_find_value(set, num)) { // Check if the number is already in the set
        ds_list_add(set, num); // Add the number to the set
        arr[i] = num; // Add the number to the array
        i++;
    }
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
