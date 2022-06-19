/// @description Draw GUI
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text(0,0,mode_text)
draw_text(0, fnt_h, node_array_string(path))
for(var i = 0; i < array_length(nodes); i++)
	draw_text(0, (i + 2) * fnt_h, string(nodes[i].num) + ": " + node_array_string(nodes[i].connected) + ": " + (nodes[i].path_par !=
		pointer_null ? string(nodes[i].path_par.num) : ""))