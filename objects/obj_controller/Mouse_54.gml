/// @description Right Pressed
var near = instance_nearest(mouse_x, mouse_y, obj_node)

if(check_near(near)){
	switch(mode){
	case Mode.NODE:
		while(array_length(near.connected) > 0)
			edge_delete(near, near.connected[0])
		array_delete(nodes,bin_search(nodes, near),1)
		instance_destroy(near)
		break
	
	case Mode.EDGE:
		start_node = near
		start_node.highlight = true
	}
}