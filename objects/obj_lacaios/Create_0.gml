alvo = noone;

image_xscale = .5;
image_yscale = .5;

grid_tamanho = 32;

grid = mp_grid_create(0, 0, room_width div grid_tamanho, room_height div grid_tamanho, grid_tamanho, grid_tamanho);

mp_grid_add_instances(grid, obj_wall, false);

caminho = path_add();

tipo = global.lacaio_selec;

// Proteção contra erro
if (!variable_struct_exists(global.lacaios_map, tipo)) {
	tipo = "zumbi"; // fallback
}

// Usa o primeiro da lista (pode mudar se quiser)
dados_array = variable_struct_get(global.lacaios_map, tipo);
var dados = dados_array[0];

nome = dados.nome;
sprite_index = dados.lacaio;
vida = dados.vida;
dano = dados.dano;
spd  = dados.veloc;
