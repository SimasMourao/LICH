depth = -y;


if(place_meeting(x, y, obj_lacaios)){
	instance_create_layer(x, y, "Instances", obj_dstr_bandr_efeito);
	instance_destroy();
}


if(position_meeting(mouse_x, mouse_y, id)){
	if(mouse_check_button_released(mb_right)){
		instance_destroy();
	}
}

if (animando_escala) {
    image_xscale = lerp(image_xscale, 1.2, 0.4); // Reduz o fator para suavizar e dar tempo de interpolar
    image_yscale = lerp(image_yscale, 1.2, 0.4);

    if (image_xscale >= 1.19 && image_yscale >= 1.19) {
        image_xscale = 1;
        image_yscale = 1;
        animando_escala = false;
    }
}
