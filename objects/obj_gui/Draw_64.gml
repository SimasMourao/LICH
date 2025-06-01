//draw_sprite_ext(spr_vida, 0, 50, 120, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_vida_mold, 0, 50, 50, 3, 3, 0, c_white, 1);
draw_sprite_ext(spr_vida, 0, 50, 50, 3, 3, 0, c_white, 1);
draw_sprite_ext(spr_vida_mold_sklt, 0, 50, 50, 3, 3, 0, c_white, 1);

draw_sprite_ext(spr_livro_dos_mortos, image_index, 1316, 718, 3, 3, 0, c_white, 1);

for(var i = 0; i < 4; i++){
	draw_sprite_ext(spr_materiais, i, 1316, 620 - 35 * i, 1, 1, 0, c_white, 1);
}

draw_text(80, 250, global.lacaio_selec);