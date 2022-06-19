/// @description Edge Add and Path Fin
var near = instance_nearest(mouse_x, mouse_y, obj_node)
if(check_near_dupe(near, start_node) && start_node != noone){
	switch(mode){
	case Mode.EDGE:
		var tar = bin_search(start_node.connected, near)
		//Add connection if it doesn't already exist.
		if(tar < 0){
			tar = -tar - 1
			array_insert(start_node.connected, tar, near)
			array_insert(near.connected,-bin_search(near.connected, start_node) - 1, start_node)
		}
		break
	
	case Mode.PATH:
		path = find_path(start_node, near)
	}
}

if(start_node != noone){
	start_node.highlight = false
	start_node = noone
}