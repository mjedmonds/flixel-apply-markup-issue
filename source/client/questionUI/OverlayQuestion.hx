package client.questionUI;

import client.Common.Globals;
import client.DrawUtil;
import client.PlayState;
import client.QuestionType;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.util.FlxSpriteUtil;
import haxe.ui.containers.Absolute;

class OverlayQuestion extends Absolute
{
	public var questionID:String;
	public var type:String;

	var canvas:FlxSprite;

	var explanation:FlxText;

	public function new(id:String, type:String, playState:PlayState, left:Float, bf:Bool)
	{
		super();
		this.questionID = id;
		this.type = type;

		explanation = null;

		this.top = 0.1 * FlxG.height;
		// this.left = 0.1 * FlxG.height;
		this.left = left;
		this.width = FlxG.width * 0.45;
		this.height = 0.8 * FlxG.height;

		// make background canvas
		canvas = new FlxSprite();
		canvas.makeGraphic(cast width, cast height, FlxColor.TRANSPARENT, true);
		var thickness = DrawUtil.lineThickness;
		var lineStyle:LineStyle = {color: FlxColor.BLACK, thickness: thickness};
		FlxSpriteUtil.drawRoundRect(canvas, thickness / 2, thickness / 2, width - thickness, height - thickness, 100, 100, FlxColor.WHITE, lineStyle);
		add(canvas);

		trace(type);
		if (type == QuestionType.explanationType)
		{
			explanation = createExplanation(playState, bf);
			add(explanation);
			trace("explanation created");
		}
		else
		{
			throw "unknown question type";
		}
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}

	override public function destroy()
	{
		if (explanation != null)
		{
			explanation.destroy();
			explanation = null;
		}
		canvas.destroy();
		canvas = null;
		super.destroy();
	}

	public function createExplanation(playState:PlayState, bf:Bool)
	{
		var expWidth:Int = 500;
		var exp:FlxText = new FlxText(100, 100, expWidth);
		var text:String = "Currently the key factor is $Time$.\n\nWe propose 3 new trajectories.\n\u2022 Proposal of Scout1 aims to decrease $Area explored$, increase $Resources collected$ a little.\n\u2022 Proposal of Scout2 aims to largely decrease $Time$, largely increase $Number of bombs classified$, decrease $Area explored$ a little, increase $Resources collected$ a little.\n\u2022 Proposal of Scout3 aims to largely increase $Time$, decrease $Resources collected$, decrease $Area explored$ a little. Rejection on the proposal will decrease $Time$ a little.";
		if (bf)
		{
			exp.applyMarkup(text, [new FlxTextFormatMarkerPair(new FlxTextFormat(FlxColor.BLACK, true, false), "$")]);
		}
		else
		{
			exp.applyMarkup(text, [
				new FlxTextFormatMarkerPair(new FlxTextFormat(FlxColor.BLACK, false, false), "$")
			]);
		}
		exp.setFormat(Globals.fontFamily, Globals.fontSize, FlxColor.BLACK, "left");
		return exp;
	}
}
