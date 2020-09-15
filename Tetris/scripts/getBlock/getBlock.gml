
for(var i = 0; i < 4; i++)
{
	for(var j = 0; j < 4; j++)
	{
		fall[i, j] = 0
	}
}
switch(argument[0])
{
	case 0: //I-Block
		fall[2, 0] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[2, 0].sprite_index = sprBlkTeal
		fall[2, 1] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[2, 1].sprite_index = sprBlkTeal
		fall[2, 2] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[2, 2].sprite_index = sprBlkTeal
		fall[2, 3] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[2, 3].sprite_index = sprBlkTeal
		break;
	case 1: //J-Block
		fall[1, 0] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[1, 0].sprite_index = sprBlkBlue
		fall[2, 0] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[2, 0].sprite_index = sprBlkBlue
		fall[2, 1] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[2, 1].sprite_index = sprBlkBlue
		fall[2, 2] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[2, 2].sprite_index = sprBlkBlue
		break;
	case 2: //L-Block
		fall[2, 0] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[2, 0].sprite_index = sprBlkOrng
		fall[3, 0] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[3, 0].sprite_index = sprBlkOrng
		fall[2, 1] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[2, 1].sprite_index = sprBlkOrng
		fall[2, 2] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[2, 2].sprite_index = sprBlkOrng
		break;
	case 3: //O-Block
		fall[1, 0] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[1, 0].sprite_index = sprBlkYellow
		fall[2, 0] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[2, 0].sprite_index = sprBlkYellow
		fall[1, 1] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[1, 1].sprite_index = sprBlkYellow
		fall[2, 1] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[2, 1].sprite_index = sprBlkYellow
		break;
	case 4: //S-Block
		fall[1, 0] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[1, 0].sprite_index = sprBlkGreen
		fall[2, 0] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[2, 0].sprite_index = sprBlkGreen
		fall[2, 1] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[2, 1].sprite_index = sprBlkGreen
		fall[3, 1] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[3, 1].sprite_index = sprBlkGreen
		break;
	case 5: //T-Block
		fall[1, 0] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[1, 0].sprite_index = sprBlkPrpl
		fall[2, 0] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[2, 0].sprite_index = sprBlkPrpl
		fall[3, 0] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[3, 0].sprite_index = sprBlkPrpl
		fall[2, 1] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[2, 1].sprite_index = sprBlkPrpl
		break;
	case 6: //Z-Block
		fall[2, 0] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[2, 0].sprite_index = sprBlkRed
		fall[3, 0] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[3, 0].sprite_index = sprBlkRed
		fall[1, 1] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[1, 1].sprite_index = sprBlkRed
		fall[2, 1] = instance_create_layer(-100, -100, "Instances", objBlock)
		fall[2, 1].sprite_index = sprBlkRed
		break;
}