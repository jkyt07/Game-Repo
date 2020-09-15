
//if shotCooldown >= shotMaxCooldown and instance_exists(objWiz) and point_distance(x,y,objWiz.x,objWiz.y) <= 64
//{
//	shotCooldown = 0
//	shotMaxCooldown = irandom_range(45,75)
//	instance_create_layer(x,y,"InstancesB", shot)
//}
//shotCooldown++

if dirCooldown >= dirMaxCooldown
{
	dirMaxCooldown = irandom_range(2,7)
	dirCooldown = 0
	direction = irandom_range(0,360)
}
dirCooldown ++

if direction >= 90 and direction <= 270
{
	image_xscale = -1	
}
else
{
	image_xscale = 1	
}


if Health <= 0
{
	instance_destroy()	
}

if y > objWiz.y
{
	layer = layer_get_id("InstancesA")	
}
else
{
	layer = layer_get_id("InstancesB")
}