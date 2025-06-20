depth = -y;

destroi_soldado();

if(!instance_exists(obj_lacaios)){
	alvo_inimigo = instance_nearest(x, y, obj_jogador);
}

else{
	alvo_inimigo = instance_nearest(x, y, obj_lacaios);
}
visivel = !collision_line(x, y, alvo_inimigo.x, alvo_inimigo.y, obj_wall, false, true);

if(visivel){
	if (!path_exists(caminho) || point_distance(x, y, alvo_inimigo.x, alvo_inimigo.y) > 8) {
	    path_end();

	    if (mp_grid_path(grid, caminho, x, y, alvo_inimigo.x, alvo_inimigo.y, true)) {
	        if (path_get_length(caminho) > 0) {
	            path_start(caminho, spd, path_action_stop, false);
	        }
	    }
	}
}