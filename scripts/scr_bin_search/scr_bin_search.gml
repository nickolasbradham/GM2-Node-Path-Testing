///@function bin_search(arr, inst, start_ind, end_ind);
///@param arr Array to search.
///@param inst The instance to search for.
///@param [start_ind] (Optional) Start index.
///@param [end_ind] (Optional) End index.
///@desc Performs a binary search on arr for inst. Returns the index of the element or -x - 1 where x is where it should be.
function bin_search(arr, inst, start_ind = 0, end_ind = array_length(arr)){
	var split = floor((end_ind + start_ind) / 2) //Find pivot.

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