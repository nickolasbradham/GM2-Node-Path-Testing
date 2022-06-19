///@function edge_delete(node_a, node_b);
///@param node_a the first node.
///@param node_b the second node.
///@description Removes the edge between node_a and node_b.
function edge_delete(node_a, node_b){
	var ind = bin_search(node_a.connected, node_b)
	if(ind >= 0) {
		array_delete(node_a.connected, ind, 1)
		array_delete(node_b.connected, bin_search(node_b.connected, node_a), 1)
	}
}

///@function check_near(node);
///@param node the node to check.
///@desc checks that node != noone and the mouse is within 10 units.
function check_near(node){
	return node != noone && point_distance(mouse_x, mouse_y, node.x, node.y) < 10
}

///@function check_near(node_a, node_b);
///@param node_a the node to check distance and valid.
///@param node_b the node to check duplicate.
///@desc checks that node_a != noone and the mouse is within 10 units and node_a != node_b.
function check_near_dupe(node_a, node_b){
	return check_near(node_a) && node_a != node_b && node_b != noone
}

///@function node_array_string(nodes);
///@param nodes the array of nodes.
///@desc Converts array of nodes into a human readable array containing the node numbers.
function node_array_string(nodes){
	var cons = "["
	var len_1 = array_length(nodes) - 1
	
	for(var ic = 0; ic < len_1; ic++)
		cons += string(nodes[ic].num) + ", "
	
	cons += (len_1 >= 0 ? string(nodes[len_1].num) : "") + "]"
	
	return cons
}

function find_path(start_node, end_node){
	var found = [start_node]
	var path = []
		//For each node in found...
		for(var i = 0; i < array_length(found); i++)
			//For each connected node...
			for(var ic = 0; ic < array_length(found[i].connected); ic++){
				
				//Check if it is already found.
				var q = 0
				for(q = 0; q < array_length(found); q++)
					if(found[i].connected[ic] == found[q])
						break
				
				if(q >= array_length(found)){
					//If not, set parent.
					found[i].connected[ic].path_par = found[i]
					
					if(found[i].connected[ic] == end_node){
						//If connected is destination, clear path...
						path = []
						
						//...and trace new path.
						var crawl = end_node
						while(crawl != start_node){
							array_push(path, crawl)
							crawl = crawl.path_par
						}
						
						array_push(path, start_node)
						
						//Break out of all loops...
						i = array_length(found)
						break
					}
					array_push(found, found[i].connected[ic])
				}
			}
	return path
}