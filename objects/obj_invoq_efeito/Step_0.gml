depth = -y

if(image_index == 6){
	instance_create_layer(x, y, "Instances", obj_lacaios);
}

if(image_index >= 9){
	instance_destroy();
}