depth = -y;

movimento_jogador(ord("D"), ord("A"), ord("W"), ord("S"), obj_wall);

if(keyboard_check_pressed(vk_space) && nivel < 9){
	nivel ++;
	cadaveres ++;
}

if(keyboard_check_released(ord("F"))){

invocar_lacaios(20, obj_lacaios, cadaveres, x, y);
}

