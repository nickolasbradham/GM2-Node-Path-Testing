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
	return check_near(node_a) && node_a != node_b
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