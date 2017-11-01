/**Created by the LayaAirIDE,do not modify.*/
package ui {
	import laya.ui.*;
	import laya.display.*; 

	public class regDlgUI extends Dialog {
		public var btn_submit:Button;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"Dialog","props":{"width":300,"height":300},"child":[{"type":"Image","props":{"y":0,"x":0,"width":300,"skin":"comp/bg.png","height":300,"sizeGrid":"29,21,16,22"}},{"type":"Button","props":{"y":0,"x":272,"skin":"comp/btn_close.png","name":"close"}},{"type":"Label","props":{"y":3,"x":124,"text":"注  册","fontSize":20,"color":"#201d1d","bold":true,"align":"center"}},{"type":"Label","props":{"y":53,"x":31,"width":80,"text":"用  户  名：","height":16,"fontSize":16,"color":"#453d3c","align":"center"}},{"type":"Label","props":{"y":92,"x":31,"width":80,"text":"输入密码：","height":16,"fontSize":16,"color":"#453d3c","align":"center"}},{"type":"Label","props":{"y":131,"x":31,"width":80,"text":"确认密码：","height":16,"fontSize":16,"color":"#453d3c","align":"center"}},{"type":"Label","props":{"y":169,"x":31,"width":80,"text":"邮箱地址：","height":16,"fontSize":16,"color":"#453d3c","align":"center"}},{"type":"Label","props":{"y":208,"x":31,"width":80,"text":"手机号码：","height":16,"fontSize":16,"color":"#453d3c","align":"center"}},{"type":"TextInput","props":{"y":47,"x":127,"width":142,"skin":"comp/textinput.png","prompt":"请输入用户名","italic":true,"height":28,"fontSize":13}},{"type":"TextInput","props":{"y":86,"x":127,"width":142,"type":"password","skin":"comp/textinput.png","prompt":"请输入密码","italic":true,"height":28,"fontSize":13}},{"type":"TextInput","props":{"y":125,"x":127,"width":142,"type":"password","skin":"comp/textinput.png","prompt":"请再次输入密码","italic":true,"height":28,"fontSize":13}},{"type":"TextInput","props":{"y":163,"x":127,"width":142,"skin":"comp/textinput.png","prompt":"请输入邮箱地址","italic":true,"height":28,"fontSize":13}},{"type":"TextInput","props":{"y":202,"x":127,"width":142,"skin":"comp/textinput.png","restrict":"0123456789","prompt":"请输入手机号码","maxChars":11,"italic":true,"height":28,"fontSize":13}},{"type":"Button","props":{"y":259,"x":111,"width":77,"var":"btn_submit","skin":"comp/button.png","labelStrokeColor":"#645050","labelSize":18,"label":"提交","height":29}}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}