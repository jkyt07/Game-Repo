if cooldown >= 60*1 and instance_exists(objWiz) and point_distance(x,y,objWiz.x,objWiz.y) <= 64
{
	cooldown = 0
	instance_create_layer(x,y,"Instances", objScorShot)
}
cooldown++

if dirCooldown >= dirMaxCooldown
{
	dirMaxCooldown = irandom_range(2,7)
	dirCooldown = 0
	//dir = (irandom_range(0,3) + dir) mod 4
	direction = irandom_range(0,360)
}
dirCooldown ++

//if dir = 0
//{
//	direction = 180
//}
//else if dir = 1
//{
//	direction = 0
//}
//else if dir = 2
//{
//	direction = 90
//}
//else if dir = 3
//{
//	direction = 270
//}

if direction >= 90 and direction <= 270
{
image_xscale = -1	
}
else
{
image_xscale = 1	
}