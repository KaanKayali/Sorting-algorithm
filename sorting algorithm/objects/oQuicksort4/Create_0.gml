// Initialize variables
randomize();

// Initialize variables
exchangesort = "Quicksort"
pixel = oBlock3x2;
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

//Red line
redline = 0;

//Timer
Timer_1 = array_length(arr)-1;
Timer_2 = 1 * room_speed;

//Realtime timer
realtime = 0;
realtimer = 1 * room_speed;
ms = 0;
mss = 0;
it = 0;