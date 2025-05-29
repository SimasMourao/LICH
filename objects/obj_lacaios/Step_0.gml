depth = -y;

alvo = noone;

if(instance_exists(obj_bandeira)){
	alvo = instance_nearest(x, y, obj_bandeira);
}

else if(instance_exists(obj_soldado)){
	alvo = instance_nearest(x, y, obj_entidade);
}


if(alvo != noone){
		mp_grid_path(grid, caminho, x, y, alvo.x, alvo.y, true);
		
		if(path_get_length(caminho) > 0){
			path_start(caminho, spd, path_action_stop, false);
			exit;
		}
	}


else{
	path_end();
	exit;
}