/// @description Right Pressed
switch(mode){
	case Mode.ADD_REMOVE_NODE:
	var inst = instance_nearest(mouse_x, mouse_y, obj_node)
	if(point_distance(mouse_x,mouse_y,inst.x, inst.y)<10){
		array_delete(nodes,bin_search(nodes, inst),1)
		instance_destroy(inst)
		return
	}
}