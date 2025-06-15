var _guiy =display_get_gui_height();
var _guix =display_get_width();

if(global.pause || global.inventario){
	draw_set_alpha(.85);
	draw_set_color(c_black);
	draw_rectangle(0, 0, _guix, _guiy, false);
}

draw_set_color(c_white);