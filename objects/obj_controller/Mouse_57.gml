/// @description Delete Edge
if(mode == Mode.EDGE){
	var near = instance_nearest(mouse_x, mouse_y, obj_node)
	if(check_near_dupe(near, start_node))
		edge_delete(start_node, near)
}

start_node.highlight = false
start_node = pointer_null