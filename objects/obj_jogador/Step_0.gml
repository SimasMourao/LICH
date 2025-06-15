
depth = -y;

movimento_jogador(ord("D"), ord("A"), ord("W"), ord("S"), obj_wall);

if(keyboard_check_released(ord("F"))){
invocar_lacaios(32, obj_invoq_efeito, qtd_lacaios, x, y);
}