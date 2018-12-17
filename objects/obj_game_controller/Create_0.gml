#macro GRID_SIZE 32
globalvar map;

MapWidth = room_width/GRID_SIZE
MapHeight = room_height/GRID_SIZE

//Create Node

for(xx = 0; xx < MapWidth; xx += 1)
{
	for(yy = 0; yy < MapHeight; yy += 1)
	{
		map[xx, yy] = instance_create_depth(xx * GRID_SIZE, yy * GRID_SIZE, 0, obj_node)
	}
}