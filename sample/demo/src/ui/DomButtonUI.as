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
		public var imgBox:Box;
		public var imgText:Label;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"width":1830,"height":1080},"child":[{"type":"Box","props":{"y":47,"x":25,"visible":false},"child":[{"type":"Image","props":{"y":174,"var":"qwer","skin":"Screensaver/8.jpg"}},{"type":"Box","props":{"y":81,"x":11},"child":[{"type":"Label","props":{"var":"qwe","text":"fvgdfhbdgffd","skin":"Screensaver/8.jpg","label":"label"}}]},{"type":"Button","props":{"y":540,"x":29,"var":"btn","skin":"comp/btn_choose.png","label":"label"}},{"type":"Box","props":{"x":11},"child":[{"type":"TextInput","props":{"width":216,"var":"qwe2","skin":"Screensaver/8.jpg","label":"label","height":71}}]},{"type":"Button","props":{"y":653,"x":24,"var":"btnDel","skin":"comp/btn_choose.png","label":"label"}}]},{"type":"Box","props":{"y":142,"x":139,"var":"imgBox"},"child":[{"type":"Label","props":{"y":92,"x":34,"width":81,"var":"imgText","text":"555","height":35,"fontSize":36,"color":"#ffffff"}},{"type":"Image","props":{"y":59,"x":1,"skin":"comp/img_blank.png"}},{"type":"Image","props":{"y":134,"x":10,"skin":"comp/img_blank.png"}}]}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}