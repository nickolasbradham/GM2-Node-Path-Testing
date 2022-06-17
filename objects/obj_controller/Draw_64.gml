/// @description Draw GUI
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text(0,0,mode_text)
for(var i = 0; i < array_length(nodes); i++)
	draw_text(0, (i + 1) * fnt_h, nodes[i].num)