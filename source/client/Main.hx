// package client;
package client;

import client.Common.Globals;
import client.PlayState;
import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();
		var width:Int = Globals.tileSize * Globals.mapWidth;
		var height:Int = Globals.tileSize * Globals.mapHeight;
		var zoom:Float = width / Globals.gameWidth;
		addChild(new FlxGame(width, height, PlayState, zoom));

		// addChild(new FlxGame(width, height, PlayStateTest, 1));
	}
}
