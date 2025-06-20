vida_total = 0;
vida_atual = vida_total;
dano = 0;
spd = .75;
alvo_inimigo = noone;
visivel = noone;


grid_tamanho = 32;

grid = mp_grid_create(0, 0, room_width div grid_tamanho, room_height div grid_tamanho, grid_tamanho, grid_tamanho);

mp_grid_add_instances(grid, obj_wall, false);

caminho = path_add();

destroi_soldado = function(){
	if(place_meeting(x, y, obj_lacaios)){
		instance_destroy();
	}
}

