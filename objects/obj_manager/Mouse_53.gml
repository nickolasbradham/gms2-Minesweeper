/// @description Left Click
var click_col = floor(mouse_x / tile_size), click_row = floor(mouse_y / tile_size)

if(state == NEW){
	state = PLAY
	for(var i = 0; i < bombs; i++){
		var tc = irandom(col_max), tr = irandom(row_max)
		while(field[tr][tc] == BOMB || (tr == click_row && tc == click_col)){
			tc = irandom(col_max)
			tr = irandom(row_max)
		}
		field[tr][tc] = BOMB
	}
}

if(field[click_row][click_col] != FLAG_BOMB && field[click_row][click_col] != FLAG_UNDUG){
	if(field[click_row][click_col] == BOMB || field[click_row][click_col] == FLAG_BOMB)
		state = END

	if(state == PLAY)
		reveal(click_row, click_col)
}