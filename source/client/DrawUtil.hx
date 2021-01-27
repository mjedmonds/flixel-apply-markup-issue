package client;

import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.util.FlxSpriteUtil;
import lime.system.Display;

class DrawUtil extends FlxSprite
{
	public static var lineThickness:Int = 3;
	public static var blackLine:LineStyle = {color: FlxColor.BLACK, thickness: lineThickness};
	public static var blueLine:LineStyle = {color: FlxColor.fromString("#376fb3"), thickness: lineThickness};
	public static var orangeLine:LineStyle = {color: FlxColor.fromString("#b37b37"), thickness: lineThickness};

	static public function drawRectangle(width:Int, height:Int, color:FlxColor, linestyle:LineStyle)
	{
		var s:FlxSprite = new FlxSprite();

		s.makeGraphic(width, height, FlxColor.TRANSPARENT, true);
		var x = lineThickness / 2;
		var y = lineThickness / 2;
		var bodyWidth = s.width - 2 * lineThickness;
		var bodyHeight = s.height - 2 * lineThickness;
		var ellipseSize = 50;
		// trace(x + " " + y + " " + bodyWidth + " " + bodyHeight + " " + lineThickness);
		FlxSpriteUtil.drawRoundRect(s, x, y, bodyWidth, bodyHeight, ellipseSize, ellipseSize, color, linestyle);
		return s;
	}
}
