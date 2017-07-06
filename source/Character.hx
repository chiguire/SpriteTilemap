package;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.input.keyboard.FlxKey;

/**
 * ...
 * @author 
 */
class Character extends FlxSprite
{

	public function new() 
	{
		super(0, 0);
		loadGraphic(AssetPaths.female__png, true, 80, 110);
		animation.add("idle", [13]);
		animation.add("stand-right", [18]);
		animation.add("stand-left", [18], 10, true, true);
		animation.add("walk-right", [22, 23], 10);
		animation.add("walk-left", [22, 23], 10, true, true);
		
		facing = FlxObject.RIGHT;
	}
	
	public override function update(elapsed:Float)
	{
		super.update(elapsed);
		if (velocity.x > 0)
		{
			facing = FlxObject.RIGHT;
			animation.play("walk-right");
		}
		else if (velocity.x < 0)
		{
			facing = FlxObject.LEFT;
			animation.play("walk-left");
		}
		else
		{
			if (facing == FlxObject.LEFT)
			{
				animation.play("stand-left");
			}
			else
			{
				animation.play("stand-right");
			}
		}
		this.acceleration.y = 50;
	}
	
	
	public function inputKeys()
	{
		velocity.x =
		if (FlxG.keys.anyPressed([FlxKey.A]))
		{
			 -200;
		}
		else if (FlxG.keys.anyPressed([FlxKey.D]))
		{
			velocity.x = 200;
		}
		else
		{
			velocity.x = 0;
		}
	}
}