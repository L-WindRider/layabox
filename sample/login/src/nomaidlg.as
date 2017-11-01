package 
{
	import laya.events.Event;
	import laya.ui.Dialog;
	import laya.utils.Handler;
	import ui.nomaidlgUI;
	
	/**
	 * ...
	 * @author heheda
	 */
	public class nomaidlg extends nomaidlgUI 
	{
		
		public function nomaidlg(){
			//this.btn_close.on(Event.CLICK,this,onClose);//关闭操作
			//this.btn_sure.on(Event.CLICK,this,this.close);//关闭操作and事件，可以写在一起
			this.btn_sure.name = Dialog.SURE;//此为类方式--等同于this.btn_sure.name = "sure";
			//this.closeHandler=new Handler(this,onClose);//对话框被关闭时会触发的回调函数处理器
			
		}
		
		//接收closeHandler传来的值
		/*private function onClose(name:String):void
		{
			trace("当前点击的按钮名字是："+name);//控制台打印
		}*/
		
		//执行传值事件
		public function setContent(msg:String):void{
			this.textcontent.text = msg;
		}
		public function popupContent(msgg:String):void{
			this.textcontent.text = msgg;
			this.popup();//模式窗口
		}

		//执行关闭事件
		/*public function onClose(e:Event):void
		{
			this.removeSelf();//移除自己
			this.close();//关闭事件
		}*/
		
	}

}