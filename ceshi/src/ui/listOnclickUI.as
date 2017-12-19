/**Created by the LayaAirIDE,do not modify.*/
package ui {
	import laya.ui.*;
	import laya.display.*; 

	public class listOnclickUI extends Dialog {
		public var list:List;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"Dialog","props":{"width":600,"height":600},"child":[{"type":"Image","props":{"y":0,"x":0,"width":600,"skin":"comp/bg.png","height":600}},{"type":"List","props":{"y":431,"x":6,"width":586,"var":"list","spaceY":0,"spaceX":20,"height":79},"child":[{"type":"Image","props":{"y":0,"x":0,"skin":"comp/bg.png","name":"render"}}]}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}