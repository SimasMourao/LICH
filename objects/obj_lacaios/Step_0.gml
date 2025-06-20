depth = -y;


if (!instance_exists(alvo)) {
    alvo = noone;
    path_end();
}


if (alvo == noone) {
    if (instance_exists(obj_bandeira)) {
        alvo = instance_nearest(x, y, obj_bandeira);
    } 
	
	else if (instance_exists(obj_soldado)) {
		var possivel_alvo = instance_nearest(x, y, obj_soldado);
		
		if(nome == "fantasma"){
			alvo = possivel_alvo;
		}
		
		else{
			if(!collision_line(x, y, possivel_alvo.x, possivel_alvo.y, obj_wall, false, true)){
				alvo = possivel_alvo;
			}
		}
	} 
	
	else {
        path_end();
        exit;
    }
}

if(alvo != noone){
	if (!path_exists(caminho) || point_distance(x, y, alvo.x, alvo.y) > 8) {
	    path_end();

	    if (mp_grid_path(grid, caminho, x, y, alvo.x, alvo.y, true)) {
	        if (path_get_length(caminho) > 0) {
	            path_start(caminho, spd, path_action_stop, false);
	        }
	    }
	}
}