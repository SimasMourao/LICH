if(instance_exists(obj_bandeira)){
	alvo = obj_bandeira;
	
	var dir = point_direction(x, y, obj_bandeira.x, obj_bandeira.y);
	var lengx = lengthdir_x(spd, dir);
	var lengy = lengthdir_y(spd, dir)
	
	x += lengx;

	y += lengy;
}

