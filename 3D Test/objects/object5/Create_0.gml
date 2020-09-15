randomize()
image_speed = 0
image_index = irandom(image_number)
image_alpha = 0
image_angle = irandom(359)

imageScale = random_range(.01, 1)
image_xscale = imageScale
image_yscale = imageScale

while place_meeting(x, y, object5)
{
	x = irandom(room_width) 
	y = irandom(512 - 128)
}