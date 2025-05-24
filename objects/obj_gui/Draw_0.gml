switch(obj_jogador.vida_atual){
	case 3:
		draw_sprite_ext(spr_vida, 0, 4, 3, 1, 1, 0, c_white, 1);
		break;
	
	case 2:
		draw_sprite_ext(spr_vida, 1, 4, 3, 1, 1, 0, c_white, 1);
		break;
	
	case 1:
		draw_sprite_ext(spr_vida, 2, 4, 3, 1, 1, 0, c_white, 1);
		break;
}

switch(obj_jogador.nivel){
	case 0:
		draw_sprite_ext(spr_nivel, 0, 10, 10, 1, 1, 0, c_white, 1);
		break;
	
	case 1:
		draw_sprite_ext(spr_nivel, 1, 10, 55, .5, .5, 0, c_white, 1);
		break;
	
	case 2:
		draw_sprite_ext(spr_nivel, 2, 10, 55, .5, .5, 0, c_white, 1);
		break;

	case 3:
		draw_sprite_ext(spr_nivel, 3, 10, 55, .5, .5, 0, c_white, 1);
		break;

	case 4:
		draw_sprite_ext(spr_nivel, 4, 10, 55, .5, .5, 0, c_white, 1);
		break;
		
	case 5:
		draw_sprite_ext(spr_nivel, 5, 10, 55, .5, .5, 0, c_white, 1);
		break;
		
	case 6:
		draw_sprite_ext(spr_nivel, 6, 10, 55, .5, .5, 0, c_white, 1);
		break;
		
	case 7:
		draw_sprite_ext(spr_nivel, 7, 10, 55, .5, .5, 0, c_white, 1);
		break;

	case 8:
		draw_sprite_ext(spr_nivel, 8, 10, 55, .5, .5, 0, c_white, 1);
		break;
		
	case 9:
		draw_sprite_ext(spr_nivel, 9, 10, 55, .5, .5, 0, c_white, 1);
		break;
}