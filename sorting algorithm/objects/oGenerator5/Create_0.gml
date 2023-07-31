// Initialize variables
randomize();

var size = room_width; // Size of the array
var arr = array_create(size); // Create an array of the specified size
var set = ds_list_create(); // Create a set data structure
var i = 0;

// Generate random numbers with no duplicates
while (i < size) {
    var num = irandom(size); // Generate a random number between 0 and 100
    if (!ds_list_find_value(set, num)) { // Check if the number is already in the set
        ds_list_add(set, num); // Add the number to the set
        arr[i] = num; // Add the number to the array
        i++;
    }
}

// Print the array
show_message(string(arr));

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