/// @description Edge Add Fin
if(mode == Mode.ADD_REMOVE_EDGE){
	var near = instance_nearest(mouse_x, mouse_y, obj_node)
	if(check_near_dupe(near, start_node)){
		var tar = bin_search(start_node.connected, near)
		if(tar < 0){
			tar = -tar - 1
			array_insert(start_node.connected, tar, near)
			array_insert(near.connected,-bin_search(near.connected, start_node) - 1, start_node)
		}
	}
}

start_node.highlight = false
start_node = pointer_null