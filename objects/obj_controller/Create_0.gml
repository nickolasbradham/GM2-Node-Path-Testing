/// @description Setup Controller

enum Mode{ADD_REMOVE_NODE, ADD_REMOVE_EDGE, length}
MODE_TEXTS = ["Add/Remove Node", "Add/Remove Edge"]

mode = Mode.ADD_REMOVE_NODE
mode_text = MODE_TEXTS[mode]

nodes = []
next_ind = 0

fnt_h = string_height("#")

start_node = pointer_null