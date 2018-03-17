package view 
{
	import laya.events.Event;
	import laya.utils.Browser;
	
	import ui.indexUI;
	
	/**
	 * ...
	 * @author heheda
	 */
	public class indexView extends indexUI 
	{
		private var obj:Object={
			time:100,
			arr:[
				{obj:"",x:0,y:0,rotateStart:true}
			]
		};
		private var i:int=0;
		
		public function indexView(){
			img.pivotX=img.left=img.width/2;
			img.pivotY=img.top=img.height/2;
			/***************计时器*******************/
			time.on(Event.INPUT,this,function():void{
				timerLoop(parseFloat(time.text)||100,this,onTimer);
			});
			/***************背景色*******************/
			color.on(Event.INPUT,this,function():void{
				_bgColor.graphics.drawRect(0,0,Browser.clientWidth-400,Browser.clientHeight,color.text||"#FFFFFF");
			})
		}
		
		/********背景颜色*********/
		private function onTimer():void{
			trace(i++);
		}
		
	}

}