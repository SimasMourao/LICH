function desenhar_lacaio(){

}

function empurrar_outro(empurrar){
		var dir = point_direction(other.x, other.y, x, y);
		var lengx = lengthdir_x(empurrar, dir);
		var lengy = lengthdir_y(empurrar, dir);
		
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