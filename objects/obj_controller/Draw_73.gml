/// @description Draw Path
draw_set_color(c_fuchsia)
for(var i = array_length(path) - 1; i > 0; i--){
	var i_1 = i - 1
	draw_line(path[i].x, path[i].y, path[i_1].x, path[i_1].y)
}