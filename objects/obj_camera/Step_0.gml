x = global.cmx;
y = global.cmy;

global.cmx = lerp(global.cmx, obj_jogador.x - global.cmv/2, .045);
global.cmy = lerp(global.cmy, obj_jogador.y - global.cmh/2, .045);

camera_set_view_pos(view_camera[0], global.cmx, global.cmy);