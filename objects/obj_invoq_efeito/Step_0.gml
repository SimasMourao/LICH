depth = -y

if (image_index == 4) {
    image_yscale = lerp(image_yscale, 5, 0.5);
}

if (image_index > 6) {
    image_yscale = lerp(image_yscale, 1, 0.5);
}


if(image_index == 6){
	instance_create_layer(x, y, "Instances", obj_lacaios);
}

if(image_index >= 9){
	instance_destroy();
}