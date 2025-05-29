alvo = noone;
spd = .35;

grid_tamanho = 32;

grid = mp_grid_create(0, 0, room_width div grid_tamanho, room_height div grid_tamanho, grid_tamanho, grid_tamanho);

mp_grid_add_instances(grid, obj_wall, false);

caminho = path_add();

