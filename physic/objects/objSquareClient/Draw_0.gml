//var c = ds_list_find_value(colors, userId)
//draw_rectangle_color(x,y,x+sprite_width, y+sprite_height, c,c,c,c,0)
draw_sprite_ext(sprite02, 0, x,y, image_xscale, image_yscale, image_angle, c, 1)
draw_text_color(0,10, string(image_angle), c,c,c,c,1)