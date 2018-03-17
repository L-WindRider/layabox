/**Created by the LayaAirIDE,do not modify.*/
package ui {
	import laya.ui.*;
	import laya.display.*; 

	public class indexUI extends View {
		public var _time:Box;
		public var time:TextInput;
		public var _color:Box;
		public var color:TextInput;
		public var _rotate:Box;
		public var rotate11:TextInput;
		public var rotate12:RadioGroup;
		public var rotate21:TextInput;
		public var rotate22:RadioGroup;
		public var _scale:Box;
		public var scale11:TextInput;
		public var scale12:RadioGroup;
		public var scale21:TextInput;
		public var scale22:RadioGroup;
		public var _alpha:Box;
		public var alpha11:TextInput;
		public var alpha12:RadioGroup;
		public var alpha21:TextInput;
		public var alpha22:RadioGroup;
		public var _bgColor:Sprite;
		public var _img:Box;
		public var img:Image;
		public var confirm:Button;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"width":1200,"height":800},"child":[{"type":"Box","props":{"y":9,"x":8,"var":"_time"},"child":[{"type":"Label","props":{"y":5,"width":69,"text":"计时器：","height":21,"fontSize":20,"color":"#000000"}},{"type":"TextInput","props":{"x":90,"width":131,"var":"time","type":"number","text":"100","skin":"comp/text1.png","prompt":"1000为1秒","height":30,"fontSize":16}}]},{"type":"Box","props":{"y":48,"x":8,"var":"_color"},"child":[{"type":"Label","props":{"y":5,"width":69,"text":"背景色：","height":21,"fontSize":20,"color":"#000000"}},{"type":"TextInput","props":{"x":90,"width":131,"var":"color","type":"text","text":"#FFFFFF","skin":"comp/text1.png","prompt":"默认白色，输错不执行","height":30,"fontSize":16}}]},{"type":"Box","props":{"y":124,"x":8,"var":"_rotate"},"child":[{"type":"Label","props":{"y":4,"width":69,"text":"旋   转：","height":21,"fontSize":20}},{"type":"TextInput","props":{"x":90,"width":131,"var":"rotate11","type":"text","text":"1","skin":"comp/text1.png","prompt":"一圈为360","height":30,"fontSize":16}},{"type":"RadioGroup","props":{"y":8,"x":246,"var":"rotate12","selectedIndex":0},"child":[{"type":"Radio","props":{"x":82,"width":56,"skin":"comp/radio.png","name":"item1","label":"旋转","height":14}},{"type":"Radio","props":{"width":56,"skin":"comp/radio.png","name":"item0","label":"不旋转","height":14}}]},{"type":"TextInput","props":{"y":46,"x":89,"width":131,"var":"rotate21","type":"text","text":"0","skin":"comp/text1.png","prompt":"一圈为360","height":30,"fontSize":16}},{"type":"RadioGroup","props":{"y":54,"x":246,"var":"rotate22"},"child":[{"type":"Radio","props":{"x":82,"width":56,"skin":"comp/radio.png","name":"item1","label":"循环","height":14}},{"type":"Radio","props":{"width":56,"skin":"comp/radio.png","name":"item0","label":"不循环","height":14}}]}]},{"type":"Box","props":{"y":227,"x":8,"var":"_scale"},"child":[{"type":"Label","props":{"y":4,"width":69,"text":"缩   放：","height":21,"fontSize":20}},{"type":"TextInput","props":{"y":0,"x":89,"width":131,"var":"scale11","type":"text","text":"0.1","skin":"comp/text1.png","height":30,"fontSize":16}},{"type":"RadioGroup","props":{"y":8,"x":246,"var":"scale12"},"child":[{"type":"Radio","props":{"x":83,"width":56,"skin":"comp/radio.png","name":"item1","label":"放大","height":14}},{"type":"Radio","props":{"width":56,"skin":"comp/radio.png","name":"item0","label":"不缩放","height":14}}]},{"type":"TextInput","props":{"y":33,"x":89,"width":131,"var":"scale21","type":"text","text":"0","skin":"comp/text1.png","height":30,"fontSize":16}},{"type":"RadioGroup","props":{"y":41,"x":246,"var":"scale22"},"child":[{"type":"Radio","props":{"x":83,"width":56,"skin":"comp/radio.png","name":"item1","label":"循环","height":14}},{"type":"Radio","props":{"width":56,"skin":"comp/radio.png","name":"item0","label":"不循环","height":14}}]}]},{"type":"Box","props":{"y":330,"x":8,"var":"_alpha"},"child":[{"type":"Label","props":{"y":4,"width":69,"text":"透明度：","height":21,"fontSize":20}},{"type":"TextInput","props":{"y":0,"x":89,"width":131,"var":"alpha11","type":"text","text":"0.1","skin":"comp/text1.png","height":30,"fontSize":16}},{"type":"RadioGroup","props":{"y":8,"x":246,"var":"alpha12"},"child":[{"type":"Radio","props":{"x":83,"width":56,"skin":"comp/radio.png","name":"item1","label":"改变","height":14}},{"type":"Radio","props":{"width":56,"skin":"comp/radio.png","name":"item0","label":"不改变","height":14}}]},{"type":"TextInput","props":{"y":49,"x":89,"width":131,"var":"alpha21","type":"text","text":"0","skin":"comp/text1.png","height":30,"fontSize":16}},{"type":"RadioGroup","props":{"y":57,"x":246,"var":"alpha22"},"child":[{"type":"Radio","props":{"x":83,"width":56,"skin":"comp/radio.png","name":"item1","label":"循环","height":14}},{"type":"Radio","props":{"width":56,"skin":"comp/radio.png","name":"item0","label":"不循环","height":14}}]}]},{"type":"Sprite","props":{"y":0,"x":400,"var":"_bgColor"}},{"type":"Box","props":{"x":400,"var":"_img"},"child":[{"type":"Image","props":{"var":"img","skin":"comp/img.png"}}]},{"type":"Button","props":{"y":440,"x":25,"var":"confirm","skin":"comp/button.png","label":"隐藏"}},{"type":"Label","props":{"y":20,"x":249,"text":"默认100，1秒=1000"}}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}