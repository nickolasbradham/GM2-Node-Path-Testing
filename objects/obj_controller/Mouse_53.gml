/// @description Left Pressed
switch(mode){
case Mode.ADD_REMOVE_NODE:
	array_push(nodes, instance_create_depth(mouse_x,mouse_y,0,obj_node,{num:next_ind++}))
	break
	
case Mode.ADD_REMOVE_EDGE:
	var near = instance_nearest(mouse_x, mouse_y, obj_node)
	if(check_near(near)){
		start_node = near
		start_node.highlight = true
	}
}