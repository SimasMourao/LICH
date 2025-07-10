if(nome != "fantasma" && nome != "golem zumbi"){
	draw_sprite_ext(spr_sombra, 0, x, y, .7, .7, 0, c_white, 1);
}

if(nome == "golem zumbi"){
	draw_sprite_ext(spr_sombra, 0, x, y -2, 1, 1, 0, c_white, 1);
}

draw_self();