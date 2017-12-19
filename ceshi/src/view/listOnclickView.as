package view 
{
	import laya.events.Event;
	import laya.utils.Handler;
	import ui.listOnclickUI;
	
	/**
	 * ...
	 * @author heheda
	 */
	public class listOnclickView extends listOnclickUI 
	{
		private var dataArr:Array = [1, 2, 3, 4, 5, 6];
		public function listOnclickView() 
		{
			//初始化弹窗
			list.hScrollBarSkin = "";
			list.selectEnable=true;
			list.scrollBar.elasticBackTime = 150;
			list.scrollBar.elasticDistance = 200;
			list.mouseHandler = Handler.create(this, onRender, null, false);//滚动列表点击事件
			list.array = dataArr;
		}
		
		private function onRender(e:Event, index:int):void{
			if(e.type=="click"){
				trace(index,"click");
			}
			
		}
	}

}