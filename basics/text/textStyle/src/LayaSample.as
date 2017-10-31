package {
	import laya.display.Text;
	import laya.display.Stage;
	import laya.webgl.WebGL;
	public class LayaSample {
	
		public function LayaSample() {
			//初始化引擎
			//不支持WebGL时自动切换至Canvas
			Laya.init(1200, 800,WebGL);
			Laya.stage.bgColor = "#efefef";//设置画布的背景颜色
			
			basics_align();//启动基础and对齐自动换行设置
		}
		private function basics_align():void{
			var txt:Text = new Text();
			txt.text = "Hello_world";//文本内容
			txt.color = "#FFFFFF";//文本颜色
			txt.font = "Ya hei";//文本字体
			txt.fontSize = 20;//文本大小
			txt.bgColor = "#c30c30";//文本区背景
			txt.borderColor = "#23cfcf";//文本框颜色
			txt.bold = true;//文本粗体
			txt.italic = true;//文本斜体
			txt.padding = [2, 15, 2, 5];//文本内边距边距
			txt.align = "center";//水平居中
			txt.valign = "middle";//垂直居中
			txt.width = 600;//文本宽度
			txt.height = 100;//文本高度
			txt.x = 100;//设置 txt 对象的属性 x 的值，用于控制 txt 对象的显示位置。
			txt.y = 100;//设置 txt 对象的属性 y 的值，用于控制 txt 对象的显示位置。
			Laya.stage.addChild(txt);//加载到舞台上
			
		}
		
	}
}