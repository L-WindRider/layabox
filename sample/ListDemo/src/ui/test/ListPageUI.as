/**Created by the LayaAirIDE,do not modify.*/
package ui.test {
	import laya.ui.*;
	import laya.display.*; 

	public class ListPageUI extends View {
		public var _list:List;
		public var remove:Button;
		public var add:Button;

		public static var uiView:Object ={"type":"View","props":{"width":400,"height":700},"child":[{"type":"List","props":{"y":7,"x":14,"var":"_list","spaceY":5,"repeatY":8,"repeatX":0},"child":[{"type":"Box","props":{"width":400,"name":"render","height":50},"child":[{"type":"Image","props":{"y":0,"x":-2,"width":381,"skin":"comp/bg.png","sizeGrid":"10,10,10,10","height":57}},{"type":"CheckBox","props":{"y":28,"x":357,"width":15,"skin":"comp/checkbox.png","name":"check","height":17}},{"type":"Clip","props":{"y":24,"x":114,"width":40,"skin":"comp/clip_num.png","name":"clip","height":24,"clipX":10}}]}]},{"type":"Button","props":{"y":466,"x":14,"width":85,"var":"remove","skin":"comp/button.png","labelStroke":0.5,"labelSize":18,"label":"删除","height":35}},{"type":"Button","props":{"y":467,"x":137,"width":90,"var":"add","skin":"comp/button.png","labelStroke":0.5,"labelSize":18,"label":"添加","height":35}}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);
		}
	}
}