depth = -y

if(image_index == 8){
	instance_create_layer(x, y, "Instances", obj_lacaios);
}

if(image_index >= 10){
	instance_destroy();
}