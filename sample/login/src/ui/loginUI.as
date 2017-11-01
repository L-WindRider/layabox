/**Created by the LayaAirIDE,do not modify.*/
package ui {
	import laya.ui.*;
	import laya.display.*; 

	public class loginUI extends View {
		public var btn_login:Button;
		public var btn_reg:Button;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"y":0,"width":600,"height":400},"child":[{"type":"Image","props":{"y":0,"x":0,"width":600,"skin":"comp/bg.png","sizeGrid":"16,25,13,18","height":400}},{"type":"Image","props":{"y":116,"x":15,"width":170,"skin":"comp/laya_monkey.png","height":225}},{"type":"Label","props":{"y":107,"x":204,"width":327,"text":"欢迎来到layaAri的世界","height":107,"fontSize":30,"font":"Microsoft YaHei","color":"#c37c54","bold":true,"align":"center"}},{"type":"TextInput","props":{"y":172,"x":346,"width":147,"skin":"comp/textinput.png","prompt":"请输入用户名...","height":37}},{"type":"Label","props":{"y":180,"x":240,"text":"用 户 名：","fontSize":20}},{"type":"Label","props":{"y":236,"x":238,"text":"密      码：","fontSize":20}},{"type":"TextInput","props":{"y":228,"x":346,"width":147,"type":"password","skin":"comp/textinput.png","prompt":"请输密码...","height":37}},{"type":"Button","props":{"y":332,"x":255,"width":87,"var":"btn_login","skin":"comp/button.png","labelStrokeColor":"#e3c4c3","labelSize":14,"labelBold":true,"labelAlign":"center","label":"登 录","height":37,"gray":false}},{"type":"Button","props":{"y":332,"x":415,"width":87,"var":"btn_reg","skin":"comp/button.png","labelStrokeColor":"#e3c4c3","labelSize":14,"labelBold":true,"labelAlign":"center","label":"注 册","height":37,"gray":false}},{"type":"CheckBox","props":{"y":293,"x":418,"width":70,"skin":"comp/checkbox.png","label":"自动登录","height":20}},{"type":"CheckBox","props":{"y":293,"x":278,"width":70,"skin":"comp/checkbox.png","label":"记住密码","height":20}}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}