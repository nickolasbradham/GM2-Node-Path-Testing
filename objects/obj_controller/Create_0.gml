/// @description Setup Controller
enum Mode{NODE, EDGE, PATH, length}
MODE_TEXTS = ["Node", "Edge", "Path"]
mode = Mode.NODE
mode_text = MODE_TEXTS[mode]
nodes = []
next_ind = 0
fnt_h = string_height("#")
start_node = pointer_null
path = []