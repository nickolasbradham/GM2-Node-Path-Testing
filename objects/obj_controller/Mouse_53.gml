/// @description Left Pressed
switch(mode){
	case Mode.ADD_REMOVE_NODE:
	array_push(nodes, instance_create_depth(mouse_x,mouse_y,0,obj_node,{num:next_ind++}))
	return
}