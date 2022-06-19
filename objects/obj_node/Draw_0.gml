/// @description Draw
draw_set_color(c_blue)
//Draw connections.
for(var i = 0; i < array_length(connected); i++)
	if(connected[i].num > num)
		draw_line(x, y, connected[i].x, connected[i].y)

//Draw highlight.
if(highlight){
	draw_set_color(c_aqua)
	draw_circle(x,y,11,false)
}

//Draw node.
draw_set_color(c_white)
draw_circle(x,y,10,false)
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text(x,y,num)