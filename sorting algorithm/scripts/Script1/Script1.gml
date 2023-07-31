// Script assets have changed for v2.3.0 see
function Script1(argument0, argument1){
	for(var i = 0;i < array_length(argument0);i++){
		if(argument1 == argument0[i]){
			return true;
		}
	}
	return false;
}