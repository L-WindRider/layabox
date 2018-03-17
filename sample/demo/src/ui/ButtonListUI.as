/**Created by the LayaAirIDE,do not modify.*/
package ui {
	import laya.ui.*;
	import laya.display.*; 

	public class ButtonListUI extends View {
		public var buttonList:List;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"width":1920,"height":1080},"child":[{"type":"Rect","props":{"y":0,"x":0,"width":1920,"lineWidth":1,"height":1080,"fillColor":"#4c82af"}},{"type":"Image","props":{"y":0,"x":0,"width":90,"skin":"comp/img_blank.png","sizeGrid":"4,4,4,4","height":1080}},{"type":"List","props":{"y":0,"x":2,"width":87,"var":"buttonList","repeatX":1,"height":1078},"child":[{"type":"Box","props":{"y":0,"x":0,"renderType":"render","name":"render"},"child":[{"type":"Button","props":{"y":0,"x":0,"width":87,"skin":"comp/btn_choose.png","name":"name","label":"投票记录","height":42}}]}]}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}