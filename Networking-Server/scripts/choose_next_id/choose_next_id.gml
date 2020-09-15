i = ds_list_find_index(users, pointer_null)
if i < 0
{
	i = ds_list_size(users);	
}
nextId = i