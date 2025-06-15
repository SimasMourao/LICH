vida_total = 0;
vida_atual = vida_total;
dano = 0;
spd = 1;
image_xscale = .5;
image_yscale = .5;
destroi_soldado = function(){
	if(place_meeting(x, y, obj_lacaios)){
		instance_destroy();
	}
}