/// @description Right Pressed

if(mode == Mode.PATH){
	path = []
	return
}

var near = instance_nearest(mouse_x, mouse_y, obj_node)

if(check_near(near)){
	switch(mode){
	case Mode.NODE:
		while(array_length(path) > 0)
			array_pop(path).path_par = noone
		
		//Clear node connections.
		while(array_length(near.connected) > 0)
			edge_delete(near, near.connected[0])
		
		//Delete and destroy node.
		array_delete(nodes,bin_search(nodes, near),1)
		instance_destroy(near)
		break
	
	case Mode.EDGE:
		start_node = near
		start_node.highlight = true
		break
	}
}