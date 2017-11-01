package 
{
	import laya.events.Event;
	import laya.ui.Dialog;
	import laya.utils.Handler;
	import ui.regDlgUI;
	
	/**
	 * ...
	 * @author heheda
	 */
	public class regDlg extends regDlgUI 
	{
		
		public function regDlg() 
		{
			//this.btn_submit.on(Event.CLICK, this, this.onSubmit);//添加事件监听
			//this.btn_submit.once(Event.CLICK, this, this.onSubmit);//once监听一次，执行后移除
			//this.btn_submit.off(Event.CLICK, this, this.onSubmit);//off移除事件监听
			//this.btn_submit.offAll(Event.CLICK);//offAll移除指定类型事件监听，括号内为空时移除所有类型事件监听
			this.btn_submit.name = Dialog.SURE;//设置name值
			//this.closeHandler = new Handler(this, this.onClose, "123", false);
			this.closeHandler = Handler.create(this, this.onClose, ["p1","p2"], false);
		}
		
		//执行提交注册的方法1
		private function onSubmit(e:Event):void
		{
			this.close();//移除本身
			var dlg:nomaidlg = new nomaidlg();
			dlg.popupContent("注册成功!");
		}
		//执行提交注册的方法2
		private function onClose(p1:String,p2:String,name:String):void
		{
			if (name == Dialog.SURE){
				var dlg:nomaidlg = new nomaidlg();
				dlg.popupContent("注册成功!");
			}
			trace(p1,p2,name);
		}
	}

}