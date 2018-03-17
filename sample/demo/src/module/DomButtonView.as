package module
{
	import common.DomEvent;
	
	import laya.events.Event;
	
	import ui.DomButtonUI;
	
	public class DomButtonView extends DomButtonUI
	{
		public function DomButtonView(){
			
			trace(qwer.displayHeight);
			trace(qwer.displayWidth);
			timerOnce(3000,this,function():void{
				qwe.x=200;
			})
			DomEvent.domEvent(qwe,DomEvent.clipboard,"gfgdghd");
			btnDel.on(Event.CLICK,this,function():void{
				DomEvent.deleteButton(qwe);
			})
			btn.on(Event.CLICK,this,function():void{
				DomEvent.domEvent(qwe,DomEvent.clipboard,"fgdsgdfgdf");
				DomEvent.domEvent(qwe2,DomEvent.clipboard,"fgdfghdhd");
			})
		}
		
	}
}