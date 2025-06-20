function lacaios(){
	var spr_lacaio = [spr_zumbi, spr_fantasma, spr_esqueleto];
	var nome_lacaio = ["zumbi", "fantasma", "esqueleto"];
	var vida = [10, 3, 5];
	var dano = [2.5, 0, 5];
	var velocid = [.3, .75, .5];
	
	for(var i = 0; i < array_length(nome_lacaio); i++){
		var nome = string(nome_lacaio[i]);
		var lacaio = spr_lacaio[i];
		var vida_lacaio = vida[i];
		var dano_lacaio = dano[i];
		var spd = velocid[i];
		
		var criar_lacaios = new criar_lacaio(nome, lacaio, spd, vida_lacaio, dano_lacaio);

		array_push(variable_struct_get(global.lacaios_map, nome), criar_lacaios);
	}

}

function empurrar_outro(empurrar) {
    var dir = point_direction(other.x, other.y, x, y);
    var lengx = lengthdir_x(empurrar, dir);
    var lengy = lengthdir_y(empurrar, dir);
    
    var destino_x = x + lengx;
    var destino_y = y + lengy;

    if (!place_meeting(destino_x, destino_y, obj_wall) || nome == "fantasma") {
        x = destino_x;
        y = destino_y;
    }
}
