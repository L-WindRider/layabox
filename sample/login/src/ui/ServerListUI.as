/**Created by the LayaAirIDE,do not modify.*/
package ui {
	import laya.ui.*;
	import laya.display.*; 

	public class ServerListUI extends View {
		public var list_server:List;
		public var btn_create:Button;
		public var btn_back:Button;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"width":600,"height":400},"child":[{"type":"Image","props":{"y":0,"x":0,"width":600,"skin":"comp/bg.png","height":400,"sizeGrid":"29,21,16,22"}},{"type":"Label","props":{"y":39,"x":231,"width":138,"text":"请选择服务器","height":24,"fontSize":20,"color":"#b418f1","bold":true,"align":"center"}},{"type":"List","props":{"y":95,"x":163,"width":341,"var":"list_server","vScrollBarSkin":"comp/vscroll.png","spaceY":15,"spaceX":40,"repeatY":5,"repeatX":2,"height":209},"child":[{"type":"Box","props":{"y":12,"x":0,"name":"render"},"child":[{"type":"CheckBox","props":{"y":2,"width":69,"skin":"comp/checkbox.png","name":"server","mouseEnabled":false,"label":"服务器01","height":14}},{"type":"Label","props":{"x":73,"width":56,"text":"（推荐）","name":"flag","height":18,"fontSize":14,"color":"#f30d09","bold":true}}]}]},{"type":"Button","props":{"y":348,"x":174,"width":85,"var":"btn_create","skin":"comp/button.png","label":"创建角色","height":30}},{"type":"Button","props":{"y":348,"x":340,"width":85,"var":"btn_back","skin":"comp/button.png","label":"返  回","height":30}}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}