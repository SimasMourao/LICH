depth = -y;

num_inst = instance_number(obj_lacaios);

if(keyboard_check_pressed(vk_escape)){
	obj_jogador.vida_atual = obj_jogador.vida_atual - 10;
	if(global.pause = false){
	global.pause = true;
	global.inventario = false;
	}
	
	else{
		global.pause = false;
	}
}

if(keyboard_check_pressed(ord("E"))){
	if(global.inventario = false){
		global.inventario = true;
		global.pause = false;
	}
	
	else{
		global.inventario = false;
	}
}

if(obj_jogador.vida_atual == 0){
	game_restart();
}


