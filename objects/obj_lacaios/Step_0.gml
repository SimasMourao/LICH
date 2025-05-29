depth = -y;

alvo = noone;

if(instance_exists(obj_bandeira)){
	alvo = instance_nearest(x, y, obj_bandeira);
}

else if(instance_exists(obj_soldado)){
	alvo = instance_nearest(x, y, obj_entidade);
}


if(alvo != noone){
	//if(distance_to_object(alvo) >= 8 && !path_exists(caminho)){
		mp_grid_path(grid, caminho, x, y, alvo.x, alvo.y, true);
		
		if(path_get_length(caminho) > 0){
			path_start(caminho, spd, path_action_stop, false);
		}
	}
//}

else{
	exit;
}