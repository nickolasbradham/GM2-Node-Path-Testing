/// @function inc_mode();
/// @description increments and updates controller mode.
function inc_mode(){
	if(++mode >= Mode.length)
		mode = 0
	update_mode_text()
}

/// @function dec_mode();
/// @description decrements and updates controller mode.
function dec_mode(){
	if(--mode < 0)
		mode = Mode.length - 1
	update_mode_text()
}

/// @fuction update_mode_text();
/// @description Updates the mode text of the controller.
function update_mode_text(){
	mode_text = MODE_TEXTS[mode]
}