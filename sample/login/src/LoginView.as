package 
{
	import laya.events.Event;
	import ui.loginUI;	
	/**
	 * ...
	 * @author heheda
	 */
	
	public class LoginView extends loginUI 
	{
		private var dlg:nomaidlg;//声明一个私有的变量
		
		public function LoginView() {
			dlg =new nomaidlg();//对私有变量dlg进行实例化
			//dlg.destroy();//对自身进行销毁
			this.btn_login.on(Event.CLICK,this,this.onLogin);
			this.btn_reg.on(Event.CLICK,this,this.onReg);
		}
		
		//点击登录按钮后执行的方法
		private function onLogin(e:Event):void{
			//dlg.setContent ("登录成功");
			// Laya.stage.addChild(dlg);//自定义窗口
			//dlg.show();//非模式模式窗口
			//dlg.popup();//模式窗口
			//dlg.popupContent("登录成功");
			this.removeSelf();//删除自己--登录界面
			this.destroy();//销毁登录界面
			var view:ServerView = new ServerView();//创建一个界面
			Laya.stage.addChild(view);
			
			
		}
		//点击注册按钮后执行的方法--这种模式和登录的结果一样，只是为了一个传值
		private function onReg(e:Event):void{
			//dlg.popupContent("注册暂未开放");
			//打开注册弹窗界面
			var reg:regDlg = new regDlg();
			reg.popup();
		}
	}

}