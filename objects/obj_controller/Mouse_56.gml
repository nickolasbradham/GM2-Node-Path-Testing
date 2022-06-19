/// @description Edge Add Fin
var near = instance_nearest(mouse_x, mouse_y, obj_node)
if(check_near_dupe(near, start_node)){
	switch(mode){
	case Mode.EDGE:
		var tar = bin_search(start_node.connected, near)
		if(tar < 0){
			tar = -tar - 1
			array_insert(start_node.connected, tar, near)
			array_insert(near.connected,-bin_search(near.connected, start_node) - 1, start_node)
		}
		break
	
	case Mode.PATH:
		var found = [start_node]
		for(var i = 0; i < array_length(found); i++)
			for(var ic = 0; ic < array_length(found[i].connected); ic++){
				
				var q = 0
				for(q = 0; q < array_length(found); q++)
					if(found[i].connected[ic] == found[q])
						break
				
				if(q >= array_length(found)){
					found[i].connected[ic].path_par = found[i]
					
					if(found[i].connected[ic] == near){
						obj_node.show_par = false
						path = []
						
						var crawl = near
						while(crawl != start_node){
							crawl.show_par = true
							array_push(path, crawl)
							crawl = crawl.path_par
						}
						
						array_push(path, start_node)
						i = array_length(found)
						break
					}
					array_push(found, found[i].connected[ic])
				}
			}
	}
}

start_node.highlight = false
start_node = pointer_null