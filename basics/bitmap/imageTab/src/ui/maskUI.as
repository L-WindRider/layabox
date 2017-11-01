/**Created by the LayaAirIDE,do not modify.*/
package ui {
	import laya.ui.*;
	import laya.display.*; 

	public class maskUI extends View {

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"width":600,"height":400},"child":[{"type":"Image","props":{"y":100,"x":231,"width":133,"skin":"monkey/monkey1.png","height":175},"child":[{"type":"Sprite","props":{"y":59,"x":49,"renderType":"mask"},"child":[{"type":"Circle","props":{"y":14,"x":17,"radius":50,"lineWidth":1,"fillColor":"#ff0000"}}]}]}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}