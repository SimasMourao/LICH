if(instance_exists(obj_bandeira)){
	alvo = obj_bandeira;
	
	if(instance_exists(obj_soldado)){
		alvo = obj_soldado;
	}

	var dir = point_direction(x, y, alvo.x, alvo.y);
	var lengx = lengthdir_x(spd, dir);
	var lengy = lengthdir_y(spd, dir)

	if(place_meeting(x + lengx, y, obj_wall)){
		while !place_meeting(x + sign(lengx), y, obj_wall){
		x += sign(lengx)
		}
	
		lengx = 0;
	}

	if(place_meeting(x, y + lengy, obj_wall)){
		while !place_meeting(x, y + sign(lengy), obj_wall){
		y += sign(lengy)
		}
	
		lengy = 0;
	}
	
	x += lengx;

	y += lengy;
}

