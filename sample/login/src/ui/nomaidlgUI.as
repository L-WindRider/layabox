/**Created by the LayaAirIDE,do not modify.*/
package ui {
	import laya.ui.*;
	import laya.display.*; 

	public class nomaidlgUI extends Dialog {
		public var btn_sure:Button;
		public var textcontent:TextArea;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"Dialog","props":{"width":300,"height":200},"child":[{"type":"Image","props":{"y":0,"x":0,"width":300,"skin":"comp/bg.png","height":200,"sizeGrid":"29,21,16,22"}},{"type":"Label","props":{"y":59,"x":84,"width":132,"text":"提示内容","height":32,"fontSize":20,"color":"#000000","align":"center"}},{"type":"Button","props":{"y":0,"x":272,"skin":"comp/btn_close.png","name":"close"}},{"type":"Button","props":{"y":143,"x":105,"width":90,"var":"btn_sure","skin":"comp/button.png","labelStrokeColor":"#000000","labelSize":20,"label":"确 定","height":32}},{"type":"TextArea","props":{"y":90,"x":41,"width":217,"var":"textcontent","text":"对不起，您所访问的内容为测试内容请点击确定退出弹窗","rotation":0,"promptColor":"#ecdede","overflow":"scroll","leading":3,"height":41,"fontSize":13,"font":"Microsoft YaHei","color":"#000000","align":"center"}}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}