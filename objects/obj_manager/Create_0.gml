/// @description Setup
#macro UNDUG -1
#macro BOMB -2
#macro FLAG_UNDUG -3
#macro FLAG_BOMB -4

#macro NEW 0
#macro PLAY 1
#macro END 2

rows = 20
cols = 24
bombs = 99

row_max = rows - 1
col_max = cols - 1

var xscale = window_get_width() / (cols*32), yscale = (window_get_height() - 32) / (rows*32)

if(xscale < yscale)
	tile_size = xscale * 32
else
	tile_size = yscale * 32
half_tile = tile_size / 2

new_game()