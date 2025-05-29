x = mouse_x;
y = mouse_y;

if(mouse_check_button_pressed(mb_left)){
	image_index = 1;
	image_xscale = .85;
	image_yscale = .85;
}

if(mouse_check_button_released(mb_left)){
	image_index = 0;
	image_xscale = 1;
	image_yscale = 1;
	
	if(room == Room_jogo && !place_meeting(x, y, obj_wall)){
		instance_create_layer(x, y, "Instances", obj_bandeira);
	}
}


if(mouse_check_button_pressed(mb_right)){
	image_index = 2;

}

if(mouse_check_button_released(mb_right)){
	image_index = 0;
	image_xscale = 1;
	image_yscale = 1;
}
