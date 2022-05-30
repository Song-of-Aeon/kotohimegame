/// Function: matrix_transpose()
function matrix_transpose(){
	var _m0 = argument0;
	var _m1 = argument0;
	for (var _i = 0; _i < 3; _i++) {
	   for (var _j = 0; _j < 3; _j++) {
	      _m1[_j*4+_i] = _m0[_i*4+_j]; 
	   }	
	}
	return _m1;
}

