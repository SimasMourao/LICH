/*x = global.cmx;
y = global.cmy;*/

global.cmx = lerp(global.cmx, obj_jogador.x - global.cmh/2, .5);
global.cmy = lerp(global.cmy, obj_jogador.y - global.cmv/2, .5);

global.cmx = clamp(global.cmx, 0, room_width - global.cmh);
global.cmy = clamp(global.cmy, 0, room_height - global.cmv);

camera_set_view_pos(view_camera[0], global.cmx, global.cmy);