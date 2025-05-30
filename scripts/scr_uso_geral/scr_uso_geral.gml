function oscilar_opacidade(opacidade_min = 0, opacidade_max = 1, veloc = 0){
	var onda = sin(current_time * veloc);
	
	onda = (onda + 0.5/ 1);
	
	image_alpha = lerp(opacidade_max, opacidade_min, onda);
}

function aumentar_tamanho_opacidade(escalamin = 1, escalamax = 1, veloc_aument_escala = 1, opacidademin = 1, opacidademax = 1, veloc_aument_opacidade = 1){
	var mouse_sobre = position_meeting(mouse_x, mouse_y, id);
	var escala = 0;
	var opacidade = 0;
	
	if(mouse_sobre){
		escala = escalamax;
		opacidade = opacidademax;
	}

	else{
		escala = escalamin;
		opacidade = opacidademin;
	}

	image_xscale = lerp(image_xscale, escala, veloc_aument_escala);
	image_yscale = lerp(image_yscale, escala, veloc_aument_escala);
	
	image_alpha = lerp(image_alpha, opacidade, veloc_aument_opacidade);
}
