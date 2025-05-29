function desenhar_lacaio(){

}

function empurrar_outro(empurrar) {
    var dir = point_direction(other.x, other.y, x, y);
    var lengx = lengthdir_x(empurrar, dir);
    var lengy = lengthdir_y(empurrar, dir);
    
    var destino_x = x + lengx;
    var destino_y = y + lengy;

    // Só move se o destino estiver livre
    if (!place_meeting(destino_x, destino_y, obj_wall)) {
        x = destino_x;
        y = destino_y;
    }
}
