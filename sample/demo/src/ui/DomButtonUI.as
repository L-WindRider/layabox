/**Created by the LayaAirIDE,do not modify.*/
package ui {
	import laya.ui.*;
	import laya.display.*; 

	public class DomButtonUI extends View {
		public var qwer:Image;
		public var qwe:Label;
		public var btn:Button;
		public var qwe2:TextInput;
		public var btnDel:Button;
		public var img:Image;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"width":1830,"height":1080},"child":[{"type":"Image","props":{"y":221,"x":25,"var":"qwer","skin":"Screensaver/8.jpg"}},{"type":"Box","props":{"y":128,"x":36},"child":[{"type":"Label","props":{"var":"qwe","text":"fvgdfhbdgffd","skin":"Screensaver/8.jpg","label":"label"}}]},{"type":"Button","props":{"y":587,"x":54,"var":"btn","skin":"comp/btn_choose.png","label":"label"}},{"type":"Box","props":{"y":47,"x":36},"child":[{"type":"TextInput","props":{"width":216,"var":"qwe2","skin":"Screensaver/8.jpg","label":"label","height":71}}]},{"type":"Button","props":{"y":700,"x":49,"var":"btnDel","skin":"comp/btn_choose.png","label":"label"}},{"type":"Image","props":{"y":123,"x":380,"var":"img","skin":"comp/btn_choose.png"}}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}