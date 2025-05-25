aumentar_tamanho_opacidade(.9, 1.1, .4, .8, 1, .4);

acao_passo();

if(jogar == true){
	
	tempo_atual --;
	
	if(tempo_atual <= 0){
		room_goto(Room_jogo);
		tempo_atual = timer;
		jogar = false
	}
//	instance_destroy(obj_botao);
}

else{
	if(sair == true){
		game_end();
	}
}