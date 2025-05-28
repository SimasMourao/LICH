x = global.cmx;
y = global.cmy;

global.cmx = lerp(global.cmx, obj_jogador.x - global.cmv/2, .1);
global.cmy = lerp(global.cmy, obj_jogador.y - global.cmh/2, .1);

camera_set_view_pos(view_camera[0], global.cmx, global.cmy);