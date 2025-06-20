depth = -999;

aumentar_tamanho_opacidade(1, 1.2, .4, 1, 1, .4);

if(!global.inventario){
	obj_control.botao_criado = false;
	instance_destroy();
}

switch(tipo){
	case 1:
		acao = function(){
			global.lacaio_selec = "zumbi";
		}
		break;
	case 2:
		acao = function(){
			global.lacaio_selec = "esqueleto";
		}
		break;
	case 3:
		acao = function(){
			global.lacaio_selec = "fantasma";
		}
		break;
	case 0:
		acao = function(){
			global.lacaio_selec = "zumbi";
		}
		break;
}