package;

import flixel.group.FlxGroup;
import flixel.math.FlxPoint;
import flixel.tile.FlxTilemap;

/**
 * ...
 * @author 
 */
class IndustrialPlatformer extends FlxGroup
{
	var tilemap : FlxTilemap;
	
	public var x(get, set) : Float;
	public var y(get, set) : Float;
	
	public function new() 
	{
		super();
		tilemap = new FlxTilemap();
		tilemap.loadMapFrom2DArray(
			[[0, 1, 2, 3, 4, 5], [1, 2, 3, 4, 5, 6]], 
			AssetPaths.platformerPack_industrial_tilesheet__png,
			70,
			70
		);
		add(tilemap);
	}
	
	public function set_x(value:Float)
	{
		return tilemap.x = value;
	}
	
	public function set_y(value:Float)
	{
		return tilemap.y = value;
	}
	
	public function get_x()
	{
		return tilemap.x;
	}
	
	public function get_y()
	{
		return tilemap.y;
	}
	
}