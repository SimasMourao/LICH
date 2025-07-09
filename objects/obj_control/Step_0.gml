depth = -y;


num_inst = instance_number(obj_lacaios);

if(keyboard_check_pressed(vk_escape)){
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

if(global.inventario && !botao_criado){
	
	
	botao = instance_create_layer(obj_jogador.x - 100, obj_jogador.y - 50, "Control", obj_botao);
	botao.tipo = 1;
	
	botao = instance_create_layer(obj_jogador.x - 100, obj_jogador.y, "Control", obj_botao);
	botao.tipo = 2;
	
	botao = instance_create_layer(obj_jogador.x - 100, obj_jogador.y + 50, "Control", obj_botao);
	botao.tipo = 3;
	
	botao = instance_create_layer(obj_jogador.x - 100, obj_jogador.y + 100, "Control", obj_botao);
	botao.tipo = 4;

	botao = instance_create_layer(obj_jogador.x - 100, obj_jogador.y + 150, "Control", obj_botao);
	botao.tipo = 5;
	
	botao_criado = true;
}



if(obj_jogador.vida_atual == 0){
	game_restart();
}


