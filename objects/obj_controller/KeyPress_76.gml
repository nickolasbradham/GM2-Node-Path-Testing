/// @description Find Longest
for(var s = 0; s < array_length(nodes); s++)
	for(var e = s + 1; e < array_length(nodes); e++){
		var t_path = find_path(nodes[s], nodes[e])
		if(array_length(t_path) > array_length(path))
			path = t_path
	}