depth = -y;
if (!instance_exists(alvo)) {
    alvo = noone;
    path_end();
}


if (alvo == noone) {
    if (instance_exists(obj_bandeira)) {
        alvo = instance_nearest(x, y, obj_bandeira);
    } else if (instance_exists(obj_soldado)) {
        alvo = instance_nearest(x, y, obj_soldado);
    } else {
        path_end();
        exit;
    }
}

if (!path_exists(caminho) || point_distance(x, y, alvo.x, alvo.y) > 8) {
    path_end();

    if (mp_grid_path(grid, caminho, x, y, alvo.x, alvo.y, true)) {
        if (path_get_length(caminho) > 0) {
            path_start(caminho, spd, path_action_stop, false);
        }
    }
}

