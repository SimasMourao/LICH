draw_self();
draw_set_font(fonte);
draw_set_halign(1);
draw_set_valign(1);
draw_text_transformed(x, y, texto, image_xscale, image_yscale, 0);

switch(tipo){
	case 1:
		draw_sprite_ext(spr_icon_lacaio, 0, x, y, image_xscale, image_yscale, 0, cor, 1);
		break;
	case 2:
		draw_sprite_ext(spr_icon_lacaio, 1, x, y, image_xscale, image_yscale, 0, cor, 1);
		break;
	case 3:
		draw_sprite_ext(spr_icon_lacaio, 2, x, y, image_xscale, image_yscale, 0, cor, 1);
		break;
	case 0:
		draw_sprite_ext(spr_icon_lacaio, 0, x, y, image_xscale, image_yscale, 0, cor, 1);
		break;
}