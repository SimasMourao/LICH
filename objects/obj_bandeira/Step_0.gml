depth = -y;

if(place_meeting(x, y, obj_lacaios) || place_meeting(x, y, obj_bandeira)){
	instance_destroy();
}

if(mouse_check_button_released(mb_left)){
	if(room == Room_jogo && !place_meeting(x, y, obj_wall)){
		instance_create_layer(x, y, "Instances", obj_bandeira);
	}
}

if(point){
	
}