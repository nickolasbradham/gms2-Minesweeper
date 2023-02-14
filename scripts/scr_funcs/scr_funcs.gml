// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reveal(click_row, click_col){
	var sc = min(click_col + 1, obj_manager.col_max), sr = min(click_row + 1, obj_manager.row_max), count = 0

	for(var cr = max(click_row - 1, 0); cr <= sr; cr++)
		for(var cc = max(click_col - 1, 0); cc <= sc; cc++)
			if(obj_manager.field[cr][cc] == BOMB || obj_manager.field[cr][cc] == FLAG_BOMB)
				count++

	obj_manager.field[click_row][click_col] = count
	
	if(count == 0)
		for(var cr = max(click_row - 1, 0); cr <= sr; cr++)
			for(var cc = max(click_col - 1, 0); cc <= sc; cc++)
				if(field[cr][cc] < 0)
					reveal(cr, cc)
}

function new_game(){
	obj_manager.state = NEW
	for(var r = 0; r < rows; r++)
		for(var c = 0; c < cols; c++)
			field[r][c] = UNDUG
}