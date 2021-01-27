package client;

import client.Common.AssetPaths;
import client.Common.Globals;
import client.QuestionType;
import client.questionUI.OverlayQuestion;
import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.text.FlxText;
import flixel.tile.FlxTilemap;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import haxe.ui.Toolkit;
import haxe.ui.components.Button;
import haxe.ui.containers.VBox;
import haxe.ui.core.Screen;
import haxe.ui.data.ArrayDataSource;
import haxe.ui.macros.ComponentMacros;
import js.lib.webassembly.Global;
import openfl.Assets;
import openfl.geom.ColorTransform;
import set.Set;

using flixel.util.FlxSpriteUtil;

// import client.InputText;
// import client.RadioGroup;
// import flixel.addons.ui.FlxUIDropDownMenu;
// import flixel.addons.ui.StrNameLabel;

/**
 * @author .:BuzzJeux:.
 */
class PlayState extends FlxState
{
	// var _dropdownScout:DropdownMenu;
	// var _dropdownFb:DropdownMenu;
	// var _radio:RadioGroup;
	// var _inputTextMap:Map<String, InputText>;
	override public function create():Void
	{
		FlxG.mouse.visible = true;
		FlxG.mouse.useSystemCursor = true;
		bgColor = 0xFF18A068;

		// initialize haxe-ui
		Toolkit.autoScale = false;
		Toolkit.init();

		var popup_nbf = new OverlayQuestion("e1", QuestionType.explanationType, this, 0.01 * FlxG.width, false);
		add(popup_nbf);
		var popup_bf = new OverlayQuestion("e2", QuestionType.explanationType, this, 0.5 * FlxG.width, true);
		add(popup_bf);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}

	override public function destroy():Void
	{
		super.destroy();
	}
}
