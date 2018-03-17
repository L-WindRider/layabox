package module 
{
	
	import laya.display.Sprite;
	import laya.ui.Image;
	import laya.utils.Tween;
	
	import ui.ScreensaverUI;
	
	/**
	 * ...
	 * @author heheda
	 */
	public class ScreensaverView extends ScreensaverUI {
		/***********图片数组************/
		private var imagesArr:Array=[];
		/*********屏保坐标范围*****************/
		private var Range:Object={minX:0,minY:0,maxX:Laya.stage.width,maxY:Laya.stage.height};
		/*********屏保小图移动范围*****************/
		private var Rangeyd:int=500;
		/*********屏保一个流程时间*****************/
		private var scrTimer:int=6000;
		/************屏保父级****************/
		private var images:Sprite=new Sprite();
		/************放大缩小的图片****************/
		private var scaleImg:Image=new Image();
		/************放大缩小的数值****************/
		private var scaleNum:int=0;
		
		public function ScreensaverView(){
			
			images.width=Range.maxX;
			images.height=Range.maxY;
			addChild(images);
			for(var a:int=0;a<28;a++){
				var img:Image=new Image();
				img.skin="Screensaver/"+a+".jpg";
				if(img.width/img.height>=Range.maxX/Range.maxY){ //当图片的宽高比大于范围宽高高比，以宽为衡量基准，否则以高
					img.height=img.height/(img.width/(Range.maxX/5));
					img.width=Range.maxX/5;
				}else{
					img.width=img.width/(img.height/(Range.maxY/5));
					img.height=Range.maxY/5;
				}
				img.x=Math.floor(Math.random()*(Range.maxX-img.width));
				img.y=Math.floor(Math.random()*(Range.maxY-img.height));
				images.addChild(img);
				imagesArr.push({
					obj:img,
					width:img.width,
					height:img.height,
					imgX:img.x,
					imgY:img.y
				});
			}
			trace(imagesArr,"imagesArr")
			imagesFun();
			timerLoop(scrTimer,this,imagesFun);
		}
		
		private function imagesFun():void{
			for (var i:int = 0; i < imagesArr.length; i++){
				var numX:int=Math.floor(Math.random()*Rangeyd)-Rangeyd/2+imagesArr[i].imgX;
				if(numX<0) numX=0;
				else if(numX>Range.maxX-imagesArr[i].width) numX=Range.maxX-imagesArr[i].width;
				var numY:int=Math.floor(Math.random()*Rangeyd)-Rangeyd/2+imagesArr[i].imgY;
				if(numY<0) numY=0;
				else if(numY>Range.maxY-imagesArr[i].height) numY=Range.maxY-imagesArr[i].height;
				Tween.to(imagesArr[i].obj,{x:numX,y:numY},scrTimer);
			}
			scaleImg.skin=imagesArr[scaleNum].obj.skin;
			
			scaleImg.width=imagesArr[scaleNum].width;
			scaleImg.height=imagesArr[scaleNum].height;
			
			scaleImg.pivot(scaleImg.width/2,scaleImg.height/2);
			scaleImg.scale(0,0);
			scaleImg.centerX=0;
			scaleImg.centerY=0;
			Tween.to(scaleImg,{scaleX:4,scaleY:4},1000);
			timerOnce(scrTimer-1000,this,function():void{
				Tween.to(scaleImg,{scaleX:0,scaleY:0},1000);
			})
			images.addChild(scaleImg);
			scaleNum++;
			if(scaleNum>=imagesArr.length-1){
				scaleNum=0;
			}
		}
		
	}

}