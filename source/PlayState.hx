package;

import flixel.FlxState;
import flixel.FlxSprite;
import flixel.group.FlxGroup;
import flixel.FlxG;

class PlayState extends FlxState
{
	var c : Character;
	var b : FlxSprite;
	var plt : IndustrialPlatformer;
	var g : FlxGroup;
	
	override public function create():Void
	{
		super.create();
		
		plt = new IndustrialPlatformer();
		plt.x = 50;
		plt.y = 200;
		add(plt);
		
		c = new Character();
		add(c);
		
		b = new FlxSprite(250, 0, "assets/images/box.png");
		b.acceleration.y = 50;
		add(b);
		
		g = new FlxGroup();
		g.add(plt);
		g.add(c);
		g.add(b);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		c.inputKeys();
		FlxG.collide(g);
	}
}
