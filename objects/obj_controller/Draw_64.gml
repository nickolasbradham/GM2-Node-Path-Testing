/// @description Draw GUI
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text(0,0,mode_text)
for(var i = 0; i < array_length(nodes); i++){
	var cons = "["
	var len_1 = array_length(nodes[i].connected) - 1
	for(var ic = 0; ic < len_1; ic++)
		cons += string(nodes[i].connected[ic].num) + ", "
	cons += (len_1 >= 0 ? string(nodes[i].connected[len_1].num) : "") + "]"
	
	draw_text(0, (i + 1) * fnt_h, string(nodes[i].num) + ": " + cons)
}