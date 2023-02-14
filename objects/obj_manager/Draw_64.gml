/// @description Draw Controls
draw_set_valign(fa_bottom)
draw_set_halign(fa_left)
draw_set_font(fnt_text)
draw_text(0, window_get_height(), state == END ? "Game ended. (N)ew Game, (S)olve" : "(N)ew Game, (S)olve")