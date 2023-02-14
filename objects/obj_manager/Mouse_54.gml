/// @description Right Click
var click_col = mouse_x / tile_size, click_row = mouse_y / tile_size

if(field[click_row][click_col] < 0)
	field[click_row][click_col] += field[click_row][click_col] < -2 ? 2 : -2