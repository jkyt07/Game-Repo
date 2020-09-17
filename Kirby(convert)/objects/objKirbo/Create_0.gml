pal_swap_init_system(shd_pal_swapper)
current_pal = 1

wlkSpd = 2
vertSpd = 0
grvSpd = 3
grv = 1

prevPos[0] = x
prevPos[1] = y

sprIndex = sprite_index

imageScale = 1
image_xscale = imageScale
image_yscale = imageScale

globalvar suck, mouth;
suck = false;
mouth = 0;
noSuck = false

pow = 0 //1 spark

dir = 0 //0=right, 1=left

//palette swap
//for(var i = 0; sprite_exists(i+1); i++)
//{
//	sprite_replace_color(sprKirbyDef + i, make_color_rgb(255,162,222), make_color_rgb(255,211,0))	
//	sprite_replace_color(sprKirbyDef + i, make_color_rgb(255,146,198), make_color_rgb(255,178,0))
//	sprite_replace_color(sprKirbyDef + i, make_color_rgb(247,113,165), make_color_rgb(231,170,0))
//	sprite_replace_color(sprKirbyDef + i, make_color_rgb(222,73,115), make_color_rgb(173,121,0))
//	sprite_replace_color(sprKirbyDef + i, make_color_rgb(181,32,57), make_color_rgb(132,97,0))
//	sprite_replace_color(sprKirbyDef + i, make_color_rgb(255,211,247), make_color_rgb(255,251,0))
//	sprite_replace_color(sprKirbyDef + i, make_color_rgb(255,24,132), make_color_rgb(255,24,0))
//	sprite_replace_color(sprKirbyDef + i, make_color_rgb(214,0,82), make_color_rgb(222,16,0))
//	sprite_replace_color(sprKirbyDef + i, make_color_rgb(181,0,41), make_color_rgb(173,0,0))
//	sprite_replace_color(sprKirbyDef + i, make_color_rgb(99,16,16), make_color_rgb(90,73,0))
//}