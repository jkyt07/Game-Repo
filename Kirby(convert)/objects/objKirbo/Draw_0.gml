draw_text(0, 0, string(vertSpd))


pal_swap_set(sprKirbPal,current_pal,false);
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
pal_swap_reset();