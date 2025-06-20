draw_set_font(fnt_botao);
	if(global.inventario = false){
		if(global.pause = false){
		draw_sprite_ext(spr_moldura, 1, 50, 50, 2, 2, 0, c_white, 1);

		draw_sprite_ext(spr_mold_vida, 0, 103, 50, 1, 1, 0, c_white, 1);
		for(var i = 0; i < obj_jogador.vida_atual; i++){
			draw_sprite_ext(spr_vida, 0, 73 + 1*i, 50, 1, 1, 0, c_white, 1);
		}

		draw_sprite_ext(spr_mold_vida, 1, 103, 50, 1, 1, 0, c_white, 1);

		draw_sprite_ext(spr_livro, 0, 1316, 700, -3, 3, 0, c_white, 1);
		draw_sprite_ext(spr_livro, 1, 1310, 703, 3, 3, -45, c_white, 1);
		draw_sprite_ext(spr_moldura_tecla, 0, 1285, 730, 1, 1, 0, c_white, 1);
		draw_text_transformed(1285, 731,"E",image_xscale, image_yscale, 0);

		for(var i = 0; i < 4; i++){
	
			draw_sprite_ext(spr_moldura, 0, 1316, 620 - 40 * i, 1, 1, 0, c_white, 1);
		}
	}
}

var _guiy =display_get_gui_height();
var _guix =display_get_width();

if(global.pause || global.inventario){
	draw_set_alpha(.7);
	draw_set_color(c_black);
	draw_rectangle(0, 0, _guix, _guiy, false);
}

draw_set_color(c_white);
draw_set_font(-1);

draw_set_font(fnt_pause);	
if(global.pause){
	draw_text_transformed(1300, 200, string(obj_control.num_inst), image_xscale, image_yscale, 0);
	draw_set_halign(fa_center);
	draw_text_transformed(683, 60, "PAUSE", image_xscale, image_yscale, 0);
}

if(global.inventario){
	draw_text_transformed(683, 60, "Livro", image_xscale, image_yscale, 0);
	draw_text(80, 250, global.lacaio_selec);
}