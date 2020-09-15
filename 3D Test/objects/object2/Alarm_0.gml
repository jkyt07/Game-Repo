var cloud = instance_create_layer(0, irandom_range(0, 512 - 128), choose("Instances_2", "Instances_1"), object4)
if choose(0, 1) == 0
{
	cloud.x	= 0 - cloud.sprite_width
}
else
{
	cloud.x = room_width + cloud.sprite_width
	cloud.direction = 180
}