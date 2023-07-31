/// @description Insert description here
//Randomize
randomize();

var eat = 0;
ear = [];

for(var i = 1; i < (room_height-1); i++){
    ear[i] = i;
}

var randomass;
Sizeeach = 0;

// Create a random ass structure
for(var i = room_width; i > 0; i--){
	randomass = ear[irandom_range(0,array_length(ear)-1)]
	array_delete(ear,randomass,0);
	var eat = instance_create_layer(i,randomass,layer,oBlock);
	for(var j = 0; j < eat.y; j++){
		instance_create_layer(i,j,layer,oBlock);
		
	}
	//Sorting algorithm
	Sizeeach = eat.y;
	
}







