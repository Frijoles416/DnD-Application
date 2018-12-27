#macro GRID_SIZE 32
globalvar map;

MapWidth = room_width/GRID_SIZE
MapHeight = room_height/GRID_SIZE

//Create Node

for(xx = 0; xx < MapWidth; xx += 1)
{
	for(yy = 0; yy < MapHeight; yy += 1)
	{
		map[xx, yy] = instance_create_depth(xx * GRID_SIZE, yy * GRID_SIZE + 16, 100, obj_node)
	}
}

//populate neighbor list

for(xx = 0; xx < MapWidth; xx += 1)
{
	for(yy = 0; yy < MapHeight; yy += 1)
	{
		node = map[xx, yy]
		
		//add left neighbor
		if (xx > 0)
		{
			ds_list_add(node.neighbors, map[xx - 1, yy])
		}
		
		//add right neighbor
		if(xx < MapWidth - 1)
		{
			ds_list_add(node.neighbors, map[xx + 1, yy])
		}
		
		//add top neighbor
		if(yy > 0)
		{
			ds_list_add(node.neighbors, map[xx, yy - 1])
		}
		
		//add bottom neighbor
		if(yy < MapHeight - 1)
		{
			ds_list_add(node.neighbors, map[xx, yy + 1])
		}
		
		//add top left neighbor
		if (xx > 0 && yy > 0)
		{
			ds_list_add(node.neighbors, map[xx - 1, yy - 1])
		}
		
		//add top right neighbor
		if (xx < MapWidth - 1 && yy > 0)
		{
			ds_list_add(node.neighbors, map[xx + 1, yy - 1])
		}
		
		//bottom left neighbor
		if(xx > 0 && yy < MapHeight - 1)
		{
			ds_list_add(node.neighbors, map[xx - 1, yy + 1])
		}
		
		//bottom right neighbor
		if(xx < MapWidth - 1 && yy < MapHeight - 1)
		{
			ds_list_add(node.neighbors, map[xx + 1, yy + 1])
		}
	}
}

with(instance_create_depth(5 * GRID_SIZE, 5 * GRID_SIZE + 16, 0, obj_knight))
{
	Gridx = 5
	Gridy = 5
	name = "Jim"
	map[Gridx, Gridy].occupant = id
}

with(instance_create_depth(5 * GRID_SIZE, 5 * GRID_SIZE + 16, 0, obj_knight))
{
	Gridx = 5
	Gridy = 8
	name = "Jimboiathany"
	map[Gridx, Gridy].occupant = id
}