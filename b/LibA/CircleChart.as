package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	import starling.core.Starling;
	
	public class CircleChart extends Sprite
	{
		public function CircleChart()
		{
			super();
			
			// support autoOrients
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			if (stage != null) {
				stageAdded();
			} else {
				addEventListener(Event.ADDED_TO_STAGE, stageAdded);
			}
		}
		
		public function stageAdded(event:Event = null):void {
			removeEventListener(flash.events.Event.ADDED_TO_STAGE, stageAdded);
			
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			var starling:Starling = new Starling(Game, stage);
			starling.start();
		}
	}
}

import flash.display.BitmapData;
import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageScaleMode;

import starling.display.Graphics;
import starling.display.Shape;
import starling.display.Sprite;
import starling.events.Event;
import starling.textures.Texture;

class Game extends starling.display.Sprite {
	private var _testTex:Texture;
	private var _testProg:Number = 0;
	
	public function Game():void {
		// 生成测试纹理
		/*
		var bmp:BitmapData = new BitmapData(256, 256, true, 0x0); //纹理的非绘制部分alpha为0
		var sprite:flash.display.Sprite = new flash.display.Sprite();
		sprite.graphics.beginFill(0xff00ff);
		sprite.graphics.drawCircle(50, 50, 50);
		bmp.draw(sprite);
		
		_testTex = Texture.fromBitmapData(bmp, false);
		
		var mask:Shape = new Shape();
		mask.x = 0;
		mask.y = 0;
		addChild(mask);
		
		mask.addEventListener(Event.ENTER_FRAME, function():void {
			drawPieMask(mask.graphics, _testProg, 50, 50, 50, -Math.PI/2, 3);
			_testProg = (_testProg + 0.01) % 1;
		});     
		*/
		// 背景
		/*
		var circle:Shape = new Shape();
		circle.graphics.beginFill(0xff0000);
		circle.graphics.drawCircle(0, 0, 40);
		circle.x = 50;
		circle.y = 50;
		addChild(circle);
		*/
	}
	/*
	private function drawPieMask (graphics:Graphics , percentage:Number , radius:Number = 50, x:Number = 0, y:Number = 0, rotation:Number = 0 , sides:int = 6) :void  {
		graphics.clear();
		
		graphics.beginTextureFill(_testTex );
		// graphics should have its beginFill function already called by now
		graphics.moveTo(x , y );
		if (sides < 3 ) sides = 3; // 3 sides minimum
		// Increase the length of the radius to cover the whole target
		radius /= Math.cos (1 /sides * Math.PI );
		// Shortcut function
		var lineToRadians:Function = function (rads:Number ): void {
			graphics.lineTo (Math.cos (rads ) * radius + x , Math. sin( rads) * radius + y) ;
		};
		// Find how many sides we have to draw
		var sidesToDraw:int = Math.floor (percentage * sides );
		for ( var i:int = 0; i <= sidesToDraw; i ++)
			lineToRadians ((i / sides ) * (Math.PI * 2 ) + rotation) ;
		// Draw the last fractioned side
		if (percentage * sides != sidesToDraw )
			lineToRadians (percentage * (Math.PI * 2 ) + rotation) ;
		graphics.lineTo (x ,y );
		
		graphics.endFill ();
	}   
	*/
}
