/// @description Draw Field
draw_set_halign(fa_center)
draw_set_valign(fa_center)

for(var r = 0; r < rows; r++)
	for(var c = 0; c < cols; c++){
		var x0 = c*tile_size, y0=r*tile_size, x1 = (c+1)*tile_size, y1 = (r+1)*tile_size
		switch(field[r][c]){
		case FLAG_BOMB:
		case FLAG_UNDUG:
			draw_set_color(c_red)
			draw_text(x0 + half_tile, y0 + half_tile, "F")
		
		case BOMB:
			if(state == END){
				draw_set_color(c_red)
				draw_text(x0 + half_tile, y0 + half_tile, "B")
			}
		
		case UNDUG:
			draw_set_color(c_ltgray)
			draw_line(x0, y0, x0, y1)
			draw_line(x0, y0, x1, y0)
			draw_line(x1, y0, x1, y1)
			draw_line(x0, y1, x1, y1)
			break
		
		default:
			switch(field[r][c]){
			case 0:
				continue
			
			case 1:
				draw_set_color(c_aqua)
				break
				
			case 2:
				draw_set_color(c_green)
				break
			
			case 3:
				draw_set_color(c_red)
				break
			
			case 4:
				draw_set_color(c_purple)
				break
			
			case 5:
				draw_set_color(c_yellow)
				break
			
			case 6:
				draw_set_color(c_teal)
				break
			
			case 7:
				draw_set_color(c_orange)
				break
			
			case 8:
				draw_set_color(c_gray)
			}
			draw_text(x0 + half_tile, y0 + half_tile, field[r][c])
		}
	}