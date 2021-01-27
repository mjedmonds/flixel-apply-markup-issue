package client;

class AssetPaths
{
	public static inline var base_asset_path = "assets/";
	public static inline var map_asset_path:String = base_asset_path + "data/";
	public static inline var basic_scout_png:String = base_asset_path + "data/" + "basic-scout.png";
	public static inline var advanced_scout_png:String = base_asset_path + "data/" + "advanced-scout.png";
	public static inline var font_asset_path:String = base_asset_path + "fonts/";
	public static inline var font_liberation_sans_reg_ttf:String = font_asset_path + "LiberationSans-Regular.ttf";
	public static inline var font_liberation_mono_reg_ttf:String = font_asset_path + "LiberationMono-Regular.ttf";
	public static inline var button_asset_path:String = base_asset_path + "images/";
	public static inline var vertical_wire = map_asset_path + "wires-vertical-wire.png";
	public static inline var horizontal_wire = map_asset_path + "wires-horizontal-wire.png";
	public static inline var lower_left_wire = map_asset_path + "wires-lower-left-corner-wire.png";
	public static inline var upper_left_wire = map_asset_path + "wires-upper-left-corner-wire.png";
	public static inline var upper_right_wire = map_asset_path + "wires-upper-right-corner-wire.png";
	public static inline var lower_right_wire = map_asset_path + "wires-lower-right-corner-wire.png";
	public static inline var down_arrow = map_asset_path + "wires-down-arrow.png";
	public static inline var left_arrow = map_asset_path + "wires-left-arrow.png";
	public static inline var right_arrow = map_asset_path + "wires-right-arrow.png";
	public static inline var up_arrow = map_asset_path + "wires-up-arrow.png";
	public static inline var bomb_defusing_map = map_asset_path + "bomb-defusing-map.tmx";
	public static inline var bomb_defusing_map_2 = map_asset_path + "bomb-defusing-map-2.tmx";
	public static inline var bomb_defusing_map_circuit = map_asset_path + "bomb-defusing-map_circuit.tmx";
	// public static inline var button_blue_rounded_png:String = button_asset_path + "blue_rounded_button.png";
}

class Globals
{
	/**
	 * How big the tiles of the tilemap are.
	 */
	public static inline var tileSize:Int = 36;

	// how many tiles wide is the map (set in .tmx)
	public static inline var mapWidth:Int = 40;
	// how many tiles tall is the map (set in .tmx)
	public static inline var mapHeight:Int = 20;

	// how many tiles wide is the map for the scouts
	public static inline var mapAreaWidth:Int = 20;
	// how many tiles tall is the map for the scouts
	public static inline var mapAreaHeight:Int = 20;
	// how many tiles wide is the explanation interface
	public static inline var explanationAreaWidth:Int = 20;
	// how many tiles tall is the explanation interface
	public static inline var explanationAreaHeight:Int = 20;

	// how many pixels width the game is (set in .hxproj and .xml)
	public static inline var gameWidth:Int = 1440;
	// how many pixels width the game is (set in .hxproj and .xml)
	public static inline var gameHeight:Int = 720;

	// font size
	public static inline var fontSize:Int = 18;
	public static inline var buttonFontSize:Int = 14;
	public static inline var titleSize:Int = 28;
	public static inline var buttonSize:Int = 25;
	// font style
	public static inline var fontFamily:String = AssetPaths.font_liberation_sans_reg_ttf;

	// number of explanations displayed in the interface
	public static inline var numExpDisplay:Int = 4;

	public static function calcTextHeight(text:String, width:Int, fontSize:Int):Float
	{
		// first calculate the number of lines, then multiply by the estimated height of a line
		return (text.length * fontSize / 0.75 / width) * (fontSize * 0.75);
	}
}
