function movimento_jogador(t_right, t_left, t_up, t_down, colide){
var right = keyboard_check(t_right);
var left = keyboard_check(t_left);
var up = keyboard_check(t_up);
var down = keyboard_check(t_down);

var hspd = right - left;
var vspd = down - up;
var move = hspd != 0 || vspd != 0;

var dir = point_direction(0, 0, hspd, vspd);
var lengx = lengthdir_x(spd * move, dir);
var lengy = lengthdir_y(spd * move, dir);

if(place_meeting(x + lengx, y, colide)){
	while !place_meeting(x + sign(lengx), y, colide){
	x += sign(lengx)
	}
	
	lengx = 0;
}

if(place_meeting(x, y + lengy, colide)){
	while !place_meeting(x, y + sign(lengy), colide){
	y += sign(lengy)
	}
	
	lengy = 0;
}
	
x += lengx;
y += lengy


}
	
	
function invocar_lacaios(distancia_jogador, lacaio, qtd_lacaios, _x, _y){
	var angulo_passo = 360 / qtd_lacaios;
	
	
		for(var i = 0; i < qtd_lacaios; i++){
			var angulo = i * angulo_passo;
		
			var invoq_x = x + lengthdir_x(distancia_jogador, angulo);
			var invoq_y = y + lengthdir_y(distancia_jogador, angulo);
			
			var valido = true;
			
			if(place_meeting(invoq_x, invoq_y, obj_wall)){
				valido = false
				var tent = 10;
				
				for(var j = 0; j <= tent; j++){
					var distanc = j * 4;
					var novo_x = invoq_x + random_range(-distanc, distanc);	
					var novo_y = invoq_y + random_range(-distanc, distanc);			
					
					if(!place_meeting(novo_x, novo_y, obj_wall)){
						invoq_x = novo_x;
						invoq_y = novo_y;
						valido = true;
						break;
					}
				}
			
			}
			
			if(valido){
				instance_create_layer(invoq_x, invoq_y, "Instances", obj_invoq_efeito);	
			}
		}
}