function c_generatepaths() {
	for(i = 0; i < array_length(rooms)-1; i++){
		for(j = 0; j < array_length(rooms[i]); j++){
			
			//rooms[i][j].connections = [1, 3];
			var thislength = array_length(rooms[i]);
			var thatlength = array_length(rooms[i+1]);
			
			//var smartresult = floor(j*(thatlength/thislength));
			var smartresult = thislength > thatlength ? j : j-1;
			//log(thislength, thatlength, j, j*thatlength/thislength);
			//rooms[i][j].connections = [smartresult-1, smartresult, smartresult+1];
			//rooms[i][j].connections = [];
			/*if smartresult-1 >= 0 {
				array_push(rooms[i][j].connections, smartresult-1);
			}
			array_push(rooms[i][j].connections, smartresult);
			if smartresult+1 < array_length(rooms[i+1]) {
					array_push(rooms[i][j].connections, smartresult+1);
			}*/
			if i && i < array_length(rooms)-2 {
				rooms[i][j].connections = [];
				if !(i%2) {
					//if smartresult-1 >= 0 {
					smartresult++;				
					rooms[i][j].connections = [smartresult, smartresult+1];
				} else {
				
					if smartresult-1 >= 0 {
					//if smartresult+1 < array_length(rooms[i+1]) {
						array_push(rooms[i][j].connections, smartresult-1);
					} else {
						rooms[i][j].connections = [smartresult];
					}
					if smartresult+1 <= array_length(rooms[i+1]) {
						array_push(rooms[i][j].connections, smartresult);
					} else {
						//rooms[i][j].connections = [smartresult];
					}
				}
			} else if !i {
				rooms[i][j].connections = [];
				var k;
				for (k=0; k<array_length(rooms[i+1]); k++) {
					array_push(rooms[i][j].connections, k);
				}
			} else {
				rooms[i][j].connections = [0];
				
			}
			//rooms[i][j].connections = [j]; //something is super busted. pointers n stuff dude. god danm it
			
		}
	}
}