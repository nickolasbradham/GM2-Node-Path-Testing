/// @description Draw
if(highlight){
	draw_set_color(c_aqua)
	draw_circle(x,y,11,false)
}
draw_set_color(c_white)
draw_circle(x,y,10,false)
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text(x,y,num)