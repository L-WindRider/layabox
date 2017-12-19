/**Created by the LayaAirIDE,do not modify.*/
package ui {
	import laya.ui.*;
	import laya.display.*; 

	public class indexUI extends View {
		public var codeAnimation:Button;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"width":750,"height":1334},"child":[{"type":"Button","props":{"y":65,"x":33,"width":225,"var":"codeAnimation","skin":"comp/button.png","labelSize":30,"label":"codeAnimation","height":69}}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}