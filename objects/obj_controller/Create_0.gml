/// @description Setup Controller

//Used for cursor tool state.
enum Mode{NODE, EDGE, PATH, length}
MODE_TEXTS = ["Node", "Edge", "Path"]
mode = Mode.NODE
mode_text = MODE_TEXTS[mode]

//Holds all nodes.
nodes = []

//The next number to assign to a node.
next_ind = 0

//Used when selecting node pairs.
start_node = pointer_null

//Holds the nodes in the calculated path.
path = []

//The debug font height.
fnt_h = string_height("#")