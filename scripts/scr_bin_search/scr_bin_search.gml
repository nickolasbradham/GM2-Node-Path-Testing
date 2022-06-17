///@function bin_search(arr, inst, start_ind*, end_ind*);
///@param {Instance[]} arr Array to search.
///@param {Instance} inst The instance to search for.
///@param {Int64} (Optional) Start index.
///@param {Int64} (Optional) End index.
///@description Performs a binary search on arr for inst. Returns the index of the element or -1 if it wasn't found.
function bin_search(arr, inst, start_ind = 0, end_ind = array_length(arr)){
	var split = floor((end_ind + start_ind) / 2)

	if(array_length(arr) == 0 || split < 0)
		return -1
	
	if(start_ind == end_ind)
		return -(start_ind + 1)
	
	if(arr[split] > inst)
		return bin_search(arr, inst, start_ind, split)
	else if(arr[split] < inst)
		return bin_search(arr, inst, split + 1, end_ind)
	else if(arr[split] == inst)
		return split
	return -split - 1
}