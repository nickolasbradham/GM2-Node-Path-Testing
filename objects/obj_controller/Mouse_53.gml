/// @description Left Pressed
switch(mode){
case Mode.NODE:
	array_push(nodes, instance_create_depth(mouse_x,mouse_y,0,obj_node,{num:next_ind++}))
	break
	
case Mode.EDGE:
case Mode.PATH:
	var near = instance_nearest(mouse_x, mouse_y, obj_node)
	if(check_near(near)){
		start_node = near
		start_node.highlight = true
	}
}