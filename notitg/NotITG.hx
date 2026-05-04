package notitg;

/**
 * A standard function with no arguments and no return value.
 */
typedef VoidFunc = Void->Void;

/**
 * Represents a modifier value and its target name.
 * @param p The percentage or value for the modifier.
 * @param m The name of the modifier.
 */
typedef Mod = {
	var p:Float;
	var m:String;
}

/**
 * Interface for manipulating graphical shaders.
 */
extern class Shader {
	/**
	 * Sets a single float uniform in the shader.
	 * @param name The uniform variable name.
	 * @param v1 The value to set.
	 */
	public function uniform1f(name:String, v1:Float):Void;

	/**
	 * Sets a vec2 float uniform in the shader.
	 * @param name The uniform variable name.
	 * @param v1 First value.
	 * @param v2 Second value.
	 */
	public function uniform2f(name:String, v1:Float, v2:Float):Void;

	/**
	 * Sets a vec3 float uniform in the shader.
	 * @param name The uniform variable name.
	 * @param v1 First value.
	 * @param v2 Second value.
	 * @param v3 Third value.
	 */
	public function uniform3f(name:String, v1:Float, v2:Float, v3:Float):Void;

	/**
	 * Sets a texture uniform in the shader.
	 * @param name The uniform variable name.
	 * @param tex The Texture object.
	 */
	public function uniformTexture(name:String, tex:Texture):Void;
}

/**
 * Represents a graphical texture loaded into memory.
 */
extern class Texture {
	/**
	 * Gets the original width of the image.
	 * @return Float The width in pixels.
	 */
	public function GetImageWidth():Float;

	/**
	 * Gets the original height of the image.
	 * @return Float The height in pixels.
	 */
	public function GetImageHeight():Float;
}

/**
 * Provides access to Lua's native high-performance math library.
 */
extern class LuaMath {
	/**
	 * The constant value of PI.
	 */
	public static var PI(get, never):Float;
	private static inline function get_PI():Float
		return untyped __lua__("math.pi");

	/**
	 * A value representing positive infinity.
	 */
	public static var huge(get, never):Float;
	private static inline function get_huge():Float
		return untyped __lua__("math.huge");

	/**
	 * Returns the absolute value of v.
	 * @param v The number.
	 * @return Float
	 */
	public static inline function abs(v:Float):Float
		return untyped __lua__("math.abs({0})", v);

	/**
	 * Returns the floor of v.
	 * @param v The number.
	 * @return Float
	 */
	public static inline function floor(v:Float):Float
		return untyped __lua__("math.floor({0})", v);

	/**
	 * Returns the ceiling of v.
	 * @param v The number.
	 * @return Float
	 */
	public static inline function ceil(v:Float):Float
		return untyped __lua__("math.ceil({0})", v);

	/**
	 * Returns the square root of v.
	 * @param v The number.
	 * @return Float
	 */
	public static inline function sqrt(v:Float):Float
		return untyped __lua__("math.sqrt({0})", v);

	/**
	 * Returns the minimum value between a and b.
	 * @param a First number.
	 * @param b Second number.
	 * @return Float
	 */
	public static inline function min(a:Float, b:Float):Float
		return untyped __lua__("math.min({0}, {1})", a, b);

	/**
	 * Returns the maximum value between a and b.
	 * @param a First number.
	 * @param b Second number.
	 * @return Float
	 */
	public static inline function max(a:Float, b:Float):Float
		return untyped __lua__("math.max({0}, {1})", a, b);

	/**
	 * Returns the remainder of the division of a by b.
	 * @param a The dividend.
	 * @param b The divisor.
	 * @return Float
	 */
	public static inline function fmod(a:Float, b:Float):Float
		return untyped __lua__("math.fmod({0}, {1})", a, b);

	/**
	 * Returns the integral and fractional parts of v.
	 * @param v The number.
	 * @return Dynamic
	 */
	public static inline function modf(v:Float):Dynamic
		return untyped __lua__("math.modf({0})", v);

	/**
	 * Returns the sine of v (radians).
	 * @param v Angle in radians.
	 * @return Float
	 */
	public static inline function sin(v:Float):Float
		return untyped __lua__("math.sin({0})", v);

	/**
	 * Returns the cosine of v (radians).
	 * @param v Angle in radians.
	 * @return Float
	 */
	public static inline function cos(v:Float):Float
		return untyped __lua__("math.cos({0})", v);

	/**
	 * Returns the tangent of v (radians).
	 * @param v Angle in radians.
	 * @return Float
	 */
	public static inline function tan(v:Float):Float
		return untyped __lua__("math.tan({0})", v);

	/**
	 * Returns the arc sine of v (radians).
	 * @param v The number.
	 * @return Float
	 */
	public static inline function asin(v:Float):Float
		return untyped __lua__("math.asin({0})", v);

	/**
	 * Returns the arc cosine of v (radians).
	 * @param v The number.
	 * @return Float
	 */
	public static inline function acos(v:Float):Float
		return untyped __lua__("math.acos({0})", v);

	/**
	 * Returns the arc tangent of v (radians).
	 * @param v The number.
	 * @return Float
	 */
	public static inline function atan(v:Float):Float
		return untyped __lua__("math.atan({0})", v);

	/**
	 * Returns the arc tangent of y/x (radians).
	 * @param y The y coordinate.
	 * @param x The x coordinate.
	 * @return Float
	 */
	public static inline function atan2(y:Float, x:Float):Float
		return untyped __lua__("math.atan2({0}, {1})", y, x);

	/**
	 * Converts degrees to radians.
	 * @param v Angle in degrees.
	 * @return Float
	 */
	public static inline function rad(v:Float):Float
		return untyped __lua__("math.rad({0})", v);

	/**
	 * Converts radians to degrees.
	 * @param v Angle in radians.
	 * @return Float
	 */
	public static inline function deg(v:Float):Float
		return untyped __lua__("math.deg({0})", v);

	/**
	 * Returns base raised to the power of exp.
	 * @param base The base.
	 * @param exp The exponent.
	 * @return Float
	 */
	public static inline function pow(base:Float, exp:Float):Float
		return untyped __lua__("math.pow({0}, {1})", base, exp);

	/**
	 * Returns e raised to the power of v.
	 * @param v The number.
	 * @return Float
	 */
	public static inline function exp(v:Float):Float
		return untyped __lua__("math.exp({0})", v);

	/**
	 * Returns the natural logarithm of v.
	 * @param v The number.
	 * @return Float
	 */
	public static inline function log(v:Float):Float
		return untyped __lua__("math.log({0})", v);

	/**
	 * Returns the base-10 logarithm of v.
	 * @param v The number.
	 * @return Float
	 */
	public static inline function log10(v:Float):Float
		return untyped __lua__("math.log10({0})", v);

	/**
	 * Returns a random float between 0 and 1.
	 * @return Float
	 */
	public static inline function random():Float
		return untyped __lua__("math.random()");

	/**
	 * Returns a random integer between min and max inclusive.
	 * @param min Minimum value.
	 * @param max Maximum value.
	 * @return Int
	 */
	public static inline function randomRange(min:Int, max:Int):Int
		return untyped __lua__("math.random({0}, {1})", min, max);

	/**
	 * Returns a random integer between 1 and max.
	 * @param max Maximum value.
	 * @return Int
	 */
	public static inline function randomInt(max:Int):Int
		return untyped __lua__("math.random({0})", max);

	/**
	 * Sets the seed for the pseudo-random generator.
	 * @param seed The seed value.
	 */
	public static inline function randomseed(seed:Float):Void
		untyped __lua__("math.randomseed({0})", seed);
}

/**
 * Base class for all visible game objects.
 */
extern class Actor {
	/** Sets horizontal position. */
	public function x(val:Float):Actor;
	/** Sets vertical position. */
	public function y(val:Float):Actor;
	/** Sets depth position. */
	public function z(val:Float):Actor;
	/** Sets both X and Y position. */
	public function xy(x:Float, y:Float):Actor;
	/** Sets X, Y, and Z position. */
	public function xyz(x:Float, y:Float, z:Float):Actor;
	/** Sets position, width, and height. */
	public function xywh(x:Float, y:Float, w:Float, h:Float):Actor;
	/** Sets uniform zoom scale. */
	public function zoom(val:Float):Actor;
	/** Sets horizontal zoom scale. */
	public function zoomx(val:Float):Actor;
	/** Sets vertical zoom scale. */
	public function zoomy(val:Float):Actor;
	/** Sets color and alpha. */
	public function diffuse(r:Float, g:Float, b:Float, a:Float):Actor;
	/** Sets only transparency. */
	public function diffusealpha(a:Float):Actor;
	/** Sets glow color. */
	public function glow(r:Float, g:Float, b:Float, a:Float):Actor;
	/** 1 to hide, 0 to show. */
	public function hidden(val:Int):Actor;
	/** Sets rotation on X axis. */
	public function rotationx(val:Float):Actor;
	/** Sets rotation on Y axis. */
	public function rotationy(val:Float):Actor;
	/** Sets rotation on Z axis. */
	public function rotationz(val:Float):Actor;
	/** Pauses commands for a duration. */
	public function sleep(time:Float):Actor;
	/** Sets blending mode. */
	public function blend(mode:String):Actor;
	/** Sets texture alignment. */
	public function align(x:Float, y:Float):Actor;
	/** Crops content from the top. */
	public function croptop(val:Float):Actor;
	/** Crops content from the bottom. */
	public function cropbottom(val:Float):Actor;
	/** Crops content from the left. */
	public function cropleft(val:Float):Actor;
	/** Crops content from the right. */
	public function cropright(val:Float):Actor;
	/** Applies a vibrating effect. */
	public function vibrate():Actor;
	/** Stops all current effects. */
	public function stopeffect():Actor;
	/** Sets the effect clock source. */
	public function effectclock(clock:String):Actor;
	/** Sets the magnitude of an effect. */
	public function effectmagnitude(x:Float, y:Float, z:Float):Actor;
	/** Sets the period of an effect. */
	public function effectperiod(val:Float):Actor;
	/** Returns current X position. */
	public function GetX():Float;
	/** Returns current Y position. */
	public function GetY():Float;
	/** Returns current Z position. */
	public function GetZ():Float;
	/** Assigns a shader to this actor. */
	public function SetShader(shader:Shader):Actor;
	/** Clears the current shader. */
	public function ClearShader():Actor;
	/** Returns the assigned shader. */
	public function GetShader():Shader;

	/** Interpolates with deceleration. */
	public function decelerate(time:Float):Actor;
	/** Interpolates with acceleration. */
	public function accelerate(time:Float):Actor;
	/** Interpolates with a spring effect. */
	public function spring(time:Float):Actor;
	/** Interpolates linearly. */
	public function linear(time:Float):Actor;
	/** Interpolates with a bounce effect. */
	public function bounce():Actor;

	/** Sets a custom Lua drawing function. */
	public function SetDrawFunction(func:Actor->Void):Actor;
	/** Manually draws the actor. */
	public function Draw():Void;
	/** Adds a listener for a command. */
	public function addcommand(cmd:String, func:Void->Void):Actor;

	/** Toggles linear texture filtering. */
	public function SetTextureFiltering(val:Bool):Actor;
}

/**
 * An Actor designed to display images or frame sequences.
 */
extern class Sprite extends Actor {
	/** Sets the Sprite texture. */
	public function SetTexture(tex:Texture):Sprite;
	/** Sets a specific sub-rectangle of the texture. */
	public function customtexturerect(a:Float, b:Float, c:Float, d:Float):Sprite;
	/** Sets texture scroll speed. */
	public function texcoordvelocity(x:Float, y:Float):Sprite;
	/** Sets animation state index. */
	public function setstate(state:Int):Sprite;
	/** Enables or disables animation. */
	public function animate(val:Int):Sprite;
}

/**
 * Captures an ActorFrame's output into a reusable texture.
 */
extern class ActorFrameTexture extends Actor {
	/** Returns the captured texture. */
	public function GetTexture():Texture;
	/** Enables alpha channel capturing. */
	public function EnableAlphaBuffer(val:Bool):ActorFrameTexture;
	/** Recreates the texture buffer. */
	public function Recreate():ActorFrameTexture;
	/** Sets if it should update every frame. */
	public function AutoUpdate(val:Bool):ActorFrameTexture;
	/** Manually updates the capture. */
	public function update():Void;
}

/**
 * A container used to group multiple Actors.
 */
extern class ActorFrame extends Actor {
	/** Finds a child by its identifier. */
	public function GetChild(name:String):Actor;
}

/**
 * An Actor for displaying text from a font.
 */
extern class BitmapText extends Actor {
	/** Sets the text string. */
	public function settext(text:Dynamic):BitmapText;
	/** Applies a rainbow cycling color. */
	public function rainbow():BitmapText;
}

/**
 * A geometric shape made of vertices.
 */
extern class Polygon extends Actor {
	/** Sets vertex count. */
	public function SetNumVertices(num:Int):Polygon;
	/** Sets drawing mode (Quads, Fan, etc). */
	public function SetDrawMode(mode:String):Polygon;
	/** Sets filling mode. */
	public function SetPolygonMode(mode:Int):Polygon;
	/** Sets position of a vertex. */
	public function SetVertexPosition(idx:Int, x:Float, y:Float, z:Float):Polygon;
	/** Sets UV coordinates of a vertex. */
	public function SetVertexTexCoord(idx:Int, u:Float, v:Float):Polygon;
	/** Assigns a texture to the polygon. */
	public function SetTexture(tex:Texture):Polygon;
	/** Toggles the depth buffer. */
	public function zbuffer(val:Int):Polygon;
}

/**
 * Represents the note playfield and player data.
 */
extern class Player extends Actor {
	/** Sets the field of view. */
	public function SetFOV(val:Float):Void;
	/** Sets far clipping distance. */
	public function SetFarDist(val:Float):Void;
	/** Prevents splines from clearing. */
	public function NoClearSplines(val:Bool):Void;
	/** Sets a custom Z-axis spline. */
	public function SetZSpline(a:Float, b:Float, c:Float, d:Float, e:Float):Void;
	/** Hides parts of the playfield. */
	public function SetHiddenRegions(regions:Dynamic):Void;
	/** Sets amount of path gradient points. */
	public function SetNumPathGradientPoints(col:Int, points:Int):Void;
	/** Defines a path point value. */
	public function SetPathGradientPoint(idx:Int, col:Int, val:Float):Void;
	/** Defines a path point color. */
	public function SetPathGradientColor(idx:Int, col:Int, r:Float, g:Float, b:Float, a:Float):Void;

	/** Sets shader for arrows. */
	public function SetArrowShader(shader:Shader):Void;
	/** Sets shader for hold notes. */
	public function SetHoldShader(shader:Shader):Void;
	/** Sets shader for receptors. */
	public function SetReceptorShader(shader:Shader):Void;
	/** Clears arrow shader. */
	public function ClearArrowShader(shader:Shader):Void;
	/** Clears hold shader. */
	public function ClearHoldShader(shader:Shader):Void;
	/** Clears receptor shader. */
	public function ClearReceptorShader(shader:Void):Void;

	/** Gets note information. */
	public function GetNoteData(startBeat:Float, endBeat:Float):Dynamic;
	/** Programmatically sets notes. */
	public function SetNoteDataFromLua(data:Dynamic):Void;
	/** Resets note type multipliers. */
	public function ClearNoteTypeMults():Void;
	/** Sets note type multipliers. */
	public function SetNoteTypeMults(data:Dynamic):Void;

	/** Forces a player input. */
	public function RealStep(col:Int):Void;
	/** Returns current combo. */
	public function GetCombo():Int;
	/** Returns current miss count. */
	public function GetMissCombo():Int;
	/** Links a controller index. */
	public function SetInputPlayer(pn:Int):Void;
	/** Toggles player logic. */
	public function SetAwake(val:Bool):Void;
}

/**
 * Contains chart difficulty information.
 */
extern class Steps {
	/** Returns difficulty level (0-5). */
	public function GetDifficulty():Int;
}

/**
 * Singleton for screen and window metrics.
 */
@:native("DISPLAY")
extern class Display {
	/** Gets window horizontal position. */
	public static inline function GetWindowX():Float
		return untyped __lua__("DISPLAY:GetWindowX()");

	/** Gets window vertical position. */
	public static inline function GetWindowY():Float
		return untyped __lua__("DISPLAY:GetWindowY()");

	/** Gets total display width. */
	public static inline function GetDisplayWidth():Float
		return untyped __lua__("DISPLAY:GetDisplayWidth()");

	/** Gets total display height. */
	public static inline function GetDisplayHeight():Float
		return untyped __lua__("DISPLAY:GetDisplayHeight()");

	/** Gets current window width. */
	public static inline function GetWindowWidth():Float
		return untyped __lua__("DISPLAY:GetWindowWidth()");

	/** Gets current window height. */
	public static inline function GetWindowHeight():Float
		return untyped __lua__("DISPLAY:GetWindowHeight()");

	/** Sets window horizontal position. */
	public static inline function SetWindowX(val:Float):Void
		untyped __lua__("DISPLAY:SetWindowX({0})", val);

	/** Sets window vertical position. */
	public static inline function SetWindowY(val:Float):Void
		untyped __lua__("DISPLAY:SetWindowY({0})", val);
}

/**
 * Singleton for current song and game engine state.
 */
@:native("GAMESTATE")
extern class GameState {
	/** Returns current song beat. */
	public static inline function GetSongBeat():Float
		return untyped __lua__("GAMESTATE:GetSongBeat()");

	/** Returns elapsed song time. */
	public static inline function GetSongTime():Float
		return untyped __lua__("GAMESTATE:GetSongTime()");

	/** Applies a raw modifier string. */
	public static inline function ApplyModifiers(str:String, pn:Int):Void
		untyped __lua__("GAMESTATE:ApplyModifiers({0}, {1})", str, pn);

	/** Gets an environment variable. */
	public static inline function GetEnv(str:String):String
		return untyped __lua__("GAMESTATE:GetEnv({0})", str);

	/** Returns current playback speed. */
	public static inline function GetMusicRate():Float
		return untyped __lua__("GAMESTATE:GetMusicRate()");

	/** Gets the Steps object. */
	public static inline function GetCurrentSteps(pn:Int):Steps
		return untyped __lua__("GAMESTATE:GetCurrentSteps({0})", pn);

	/** Forces song to a time. */
	public static inline function SetSongPosition(beat:Float):Void
		untyped __lua__("GAMESTATE:SetSongPosition({0})", beat);

	/** Forces song to a beat. */
	public static inline function SetSongBeat(beat:Float):Void
		untyped __lua__("GAMESTATE:SetSongBeat({0})", beat);

	/** Terminates current play. */
	public static inline function FinishSong():Void
		untyped __lua__("GAMESTATE:FinishSong()");

	/** Returns true if in editor. */
	public static inline function IsEditMode():Bool
		return untyped __lua__("GAMESTATE:IsEditMode()");

	/** Returns true if human. */
	public static inline function IsHumanPlayer(pn:Int):Bool
		return untyped __lua__("GAMESTATE:IsHumanPlayer({0})", pn);
}

/**
 * Singleton for system messaging.
 */
@:native("SCREENMAN")
extern class ScreenMan {
	/** Shows a standard message. */
	public static inline function SystemMessage(msg:String):Void
		untyped __lua__("SCREENMAN:SystemMessage({0})", msg);

	/** Shows a message instantly. */
	public static inline function SystemMessageNoAnimate(msg:String):Void
		untyped __lua__("SCREENMAN:SystemMessageNoAnimate({0})", msg);
}

/**
 * Singleton for engine-wide event broadcasts.
 */
@:native("MESSAGEMAN")
extern class MessageMan {
	/** Broadcasts a string message. */
	public static inline function Broadcast(msg:String):Void
		untyped __lua__("MESSAGEMAN:Broadcast({0})", msg);
}

/** Applies a smooth modifier change. */
@:native("ease") extern function ease(data:Dynamic):Void;
/** Applies an additive modifier change. */
@:native("add") extern function add(data:Dynamic):Void;
/** Sets a modifier value instantly. */
@:native("set") extern function set(data:Dynamic):Void;
/** Applies a smooth transition to a function variable. */
@:native("func_ease") extern function func_ease(data:Dynamic):Void;
/** Triggers a function at a beat. */
@:native("func") extern function func(data:Dynamic):Void;
/** Triggers a function every frame. */
@:native("perframe") extern function perframe(data:Dynamic):Void;
/** Defines default modifier values. */
@:native("setdefault") extern function setdefault(data:Dynamic):Void;
/** Defines custom modifier logic. */
@:native("definemod") extern function definemod(data:Dynamic):Void;
/** Hides specific note columns. */
@:native("hide") extern function hide(data:Dynamic):Void;

/** Declares an internal template variable. */
@:native("aux") extern function aux(data:Dynamic):Void;
/** Links modifiers to a dependency function. */
@:native("node") extern function node(data:Dynamic):Void;
/** Additively sets a modifier instantly. */
@:native("acc") extern function acc(data:Dynamic):Void;
/** Swaps values between two modifiers. */
@:native("swap") extern function swap(data:Dynamic):Void;
/** Shows a song information card. */
@:native("card") extern function card(data:Dynamic):Void;
/** Capture setup for AFT. */
@:native("aft") extern function aft(actor:ActorFrameTexture):Void;
/** Sprite setup helper. */
@:native("sprite") extern function sprite(actor:Sprite):Void;
/** Prevents buffer clearing for an AFT. */
@:native("LimitAft") extern function LimitAft(actor:ActorFrameTexture):Void;
/** Maps a proxy to a target judgment. */
@:native("setupJudgeProxy") extern function setupJudgeProxy(proxy:Actor, target:Actor, pn:Int):Void;
/** Exits the song immediately. */
@:native("backToSongWheel") extern function backToSongWheel(msg:String):Void;

/**
 * Standard easing function names for the template.
 */
enum abstract EaseType(String) from String to String {
	var instant = "instant";
	var linear = "linear";
	var inQuad = "inQuad";
	var outQuad = "outQuad";
	var inOutQuad = "inOutQuad";
	var inCubic = "inCubic";
	var outCubic = "outCubic";
	var inOutCubic = "inOutCubic";
	var inQuart = "inQuart";
	var outQuart = "outQuart";
	var inOutQuart = "inOutQuart";
	var inQuint = "inQuint";
	var outQuint = "outQuint";
	var inOutQuint = "inOutQuint";
	var inExpo = "inExpo";
	var outExpo = "outExpo";
	var inOutExpo = "inOutExpo";
	var inSine = "inSine";
	var outSine = "outSine";
	var inOutSine = "inOutSine";
	var inCirc = "inCirc";
	var outCirc = "outCirc";
	var inOutCirc = "inOutCirc";
	var inBack = "inBack";
	var outBack = "outBack";
	var inOutBack = "inOutBack";
	var inBounce = "inBounce";
	var outBounce = "outBounce";
	var inOutBounce = "inOutBounce";
	var bounce = "bounce";
	var inElastic = "inElastic";
	var outElastic = "outElastic";
	var inOutElastic = "inOutElastic";
	var tri = "tri";
	var bell = "bell";
	var pop = "pop";
	var tap = "tap";
	var pulse = "pulse";
	var spike = "spike";
}

/**
 * Primary NotITG wrapper for global variables and template functions.
 */
@:topLevelCall
@:native("")
extern class NotITG {
	/** Screen center X coordinate. */
	@:native("scx") extern public static var scx:Float;
	/** Screen center Y coordinate. */
	@:native("scy") extern public static var scy:Float;
	/** Total screen width. */
	@:native("sw") extern public static var sw:Float;
	/** Total screen height. */
	@:native("sh") extern public static var sh:Float;
	/** Reference to Player 1. */
	@:native("P1") extern public static var P1:Player;
	/** Reference to Player 2. */
	@:native("P2") extern public static var P2:Player;

	/** Global center X constant. */
	@:native("SCREEN_CENTER_X") extern public static var SCREEN_CENTER_X:Float;
	/** Global center Y constant. */
	@:native("SCREEN_CENTER_Y") extern public static var SCREEN_CENTER_Y:Float;

	/** Table of players. */
	@:native("P") extern public static var P:Dynamic;
	/** Table of judgment proxies. */
	@:native("PJ") extern public static var PJ:Dynamic;
	/** Table of combo proxies. */
	@:native("PC") extern public static var PC:Dynamic;
	/** Table of player proxies. */
	@:native("PP") extern public static var PP:Dynamic;

	/** The main ActorFrame. */
	@:native("MainFrame") extern public static var MainFrame:ActorFrame;

	/** The background screen cover. */
	@:native("screencover") extern public static var screencover:Sprite;

	/**
	 * Smoothly transitions modifiers using an easing function.
	 * @param beat Starting beat.
	 * @param len Duration in beats.
	 * @param easeFunc The easing function to apply.
	 * @param mods List of modifiers.
	 * @param plr Player index (optional).
	 */
	@:topLevelCall
	public inline static function easeMod(beat:Float, len:Float, easeFunc:EaseType, mods:Array<Mod>, ?plr:Int):Void {
		var args:Dynamic = untyped __lua__("{ {0}, {1}, _G[{2}] or xero[{2}] }", beat, len, easeFunc);
		var numMods:Int = untyped __lua__("#{0}", mods);
		var i = 1;
		while (i <= numMods) {
			var mod:Mod = untyped __lua__("{0}[{1}]", mods, i);
			untyped __lua__("table.insert({0}, {1})", args, mod.p);
			untyped __lua__("table.insert({0}, {1})", args, mod.m);
			i++;
		}
		if (plr != null)
			untyped __lua__("{0}.plr = {1}", args, plr);
		ease(args);
	}

	/**
	 * Smoothly transitions modifiers additively.
	 * @param beat Starting beat.
	 * @param len Duration in beats.
	 * @param easeFunc The easing function to apply.
	 * @param mods List of modifiers.
	 * @param plr Player index (optional).
	 */
	@:topLevelCall
	public inline static function addMod(beat:Float, len:Float, easeFunc:EaseType, mods:Array<Mod>, ?plr:Int):Void {
		var args:Dynamic = untyped __lua__("{ {0}, {1}, _G[{2}] or xero[{2}] }", beat, len, easeFunc);
		var numMods:Int = untyped __lua__("#{0}", mods);
		var i = 1;
		while (i <= numMods) {
			var mod:Mod = untyped __lua__("{0}[{1}]", mods, i);
			untyped __lua__("table.insert({0}, {1})", args, mod.p);
			untyped __lua__("table.insert({0}, {1})", args, mod.m);
			i++;
		}
		if (plr != null)
			untyped __lua__("{0}.plr = {1}", args, plr);
		add(args);
	}

	/**
	 * Sets modifier values instantly.
	 * @param beat The beat to apply.
	 * @param mods List of modifiers.
	 * @param plr Player index (optional).
	 */
	@:topLevelCall
	public inline static function setMod(beat:Float, mods:Array<Mod>, ?plr:Int):Void {
		var args:Dynamic = untyped __lua__("{ {0} }", beat);
		var numMods:Int = untyped __lua__("#{0}", mods);
		var i = 1;
		while (i <= numMods) {
			var mod:Mod = untyped __lua__("{0}[{1}]", mods, i);
			untyped __lua__("table.insert({0}, {1})", args, mod.p);
			untyped __lua__("table.insert({0}, {1})", args, mod.m);
			i++;
		}
		if (plr != null)
			untyped __lua__("{0}.plr = {1}", args, plr);
		set(args);
	}

	/**
	 * Additively sets modifier values instantly.
	 * @param beat The beat to apply.
	 * @param mods List of modifiers.
	 * @param plr Player index (optional).
	 */
	@:topLevelCall
	public inline static function accMod(beat:Float, mods:Array<Mod>, ?plr:Int):Void {
		var args:Dynamic = untyped __lua__("{ {0} }", beat);
		var numMods:Int = untyped __lua__("#{0}", mods);
		var i = 1;
		while (i <= numMods) {
			var mod:Mod = untyped __lua__("{0}[{1}]", mods, i);
			untyped __lua__("table.insert({0}, {1})", args, mod.p);
			untyped __lua__("table.insert({0}, {1})", args, mod.m);
			i++;
		}
		if (plr != null)
			untyped __lua__("{0}.plr = {1}", args, plr);
		acc(args);
	}

	/**
	 * Defines one or more auxiliary modifiers.
	 * @param names List of modifier names.
	 */
	@:topLevelCall
	public inline static function auxMod(names:Array<String>):Void {
		var args:Dynamic = untyped __lua__("{}");
		for (i in 0...names.length)
			untyped __lua__("table.insert({0}, {1})", args, names[i]);
		aux(args);
	}

	/**
	 * Smoothly transitions a custom value passed to a function.
	 * @param beat Starting beat.
	 * @param len Duration in beats.
	 * @param easeFunc Easing function.
	 * @param v0 Initial value.
	 * @param v1 Target value.
	 * @param fn Callback function.
	 * @param plr Player index (optional).
	 */
	@:topLevelCall
	public inline static function easeFunc(beat:Float, len:Float, easeFunc:EaseType, v0:Float, v1:Float, fn:Float->Void, ?plr:Int):Void {
		var args:Dynamic = untyped __lua__("{ {0}, {1}, _G[{2}] or xero[{2}], {3}, {4}, {5} }", beat, len, easeFunc, v0, v1, fn);
		if (plr != null)
			untyped __lua__("{0}.plr = {1}", args, plr);
		func_ease(args);
	}

	/**
	 * Executes code at a specific beat.
	 * @param beat The beat.
	 * @param callback The function.
	 */
	@:topLevelCall
	public inline static function funcSet(beat:Float, callback:VoidFunc):Void {
		var args:Dynamic = untyped __lua__("{ {0}, {1} }", beat, callback);
		func(args);
	}

	/**
	 * Executes code every frame.
	 * @param beat Starting beat.
	 * @param len Duration in beats.
	 * @param callback Logic function.
	 */
	@:topLevelCall
	public inline static function perFrame(beat:Float, len:Float, callback:Float->Dynamic->Void):Void {
		var args:Dynamic = untyped __lua__("{ {0}, {1}, {2} }", beat, len, callback);
		perframe(args);
	}

	/**
	 * Sets default values for the play session.
	 * @param mods List of modifiers.
	 */
	@:topLevelCall
	public inline static function setDefault(mods:Array<Mod>):Void {
		var args:Dynamic = untyped __lua__("{}");
		var numMods:Int = untyped __lua__("#{0}", mods);
		var i = 1;
		while (i <= numMods) {
			var mod:Mod = untyped __lua__("{0}[{1}]", mods, i);
			untyped __lua__("table.insert({0}, {1})", args, mod.p);
			untyped __lua__("table.insert({0}, {1})", args, mod.m);
			i++;
		}
		setdefault(args);
	}

	/**
	 * Creates a custom modifier node.
	 * @param inputs Inputs for the node.
	 * @param callback Dependent logic.
	 * @param outputs Outputs (optional).
	 */
	@:topLevelCall
	public inline static function defineMod(inputs:Array<String>, callback:Dynamic, ?outputs:Array<String>):Void {
		var args:Dynamic = untyped __lua__("{}");
		var numInputs:Int = untyped __lua__("#{0}", inputs);
		var i = 1;
		while (i <= numInputs) {
			var inp:String = untyped __lua__("{0}[{1}]", inputs, i);
			untyped __lua__("table.insert({0}, {1})", args, inp);
			i++;
		}
		untyped __lua__("table.insert({0}, {1})", args, callback);
		if (outputs != null) {
			var numOutputs:Int = untyped __lua__("#{0}", outputs);
			var j = 1;
			while (j <= numOutputs) {
				var out:String = untyped __lua__("{0}[{1}]", outputs, j);
				untyped __lua__("table.insert({0}, {1})", args, out);
				j++;
			}
		}
		definemod(args);
	}

	/**
	 * Hides specific notes from display.
	 * @param beat Starting beat.
	 * @param dur Duration in beats.
	 * @param cols List of column indices.
	 * @param plrs List of player indices.
	 */
	@:topLevelCall
	public inline static function hideFunc(beat:Float, dur:Float, cols:Array<Int>, plrs:Array<Int>):Void {
		hide({
			beat: beat,
			dur: dur,
			column: cols,
			plr: plrs
		});
	}
}
