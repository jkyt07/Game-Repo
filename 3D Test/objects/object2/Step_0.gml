randomize()

x-=daySpd

if x < 0 //- sprite_width
{
	layer_set_visible("Tiles_2", true)	
	//object1.image_index = 1
}

if x < 0 - room_width //- sprite_width
{
	x = room_width //+ sprite_width
	layer_set_visible("Tiles_2", false)	
	//object1.image_index = 0
}

if alarm[0] <= 0
alarm[0] = irandom_range(1, 30 * 5)/daySpd

if abs(x - 512) <= daySpd
{
	for(var i = instance_number(object5)-1; i >= 0; i--)
	{
		instance_destroy(instance_find(object5, i))	
	}
	
	repeat(irandom(25))
	{
		instance_create_layer(irandom(room_width), irandom(512 - 128), "Instances_3", object5)
	}	
}