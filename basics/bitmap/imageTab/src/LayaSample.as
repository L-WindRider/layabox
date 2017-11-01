package {
	import laya.display.Sprite;
	import laya.utils.Browser;
	import laya.webgl.WebGL;
	public class LayaSample {
		
		//需要切换的图片资源路径
        private var monkey1:String = "res/img/monkey1.png";
        private var monkey2:String = "res/img/monkey2.png";
		//切换状态
        private var flag:Boolean = false;
		
		public function LayaSample() {
			
			//初始化引擎
			Laya.init(Browser.clientWidth, Browser.clientHeight, WebGL);
			Laya.stage.bgColor = "#FFFFFF";
			image1();//显示图片
		}
		//单纯的显示图片
		private function image1():void{
			var img:Sprite = new Sprite();
			img.loadImage(monkey1, 10, 10);//加载图片坐标为100,50
			Laya.stage.addChild(img);
		}
		private function switchImg(e:*= null):void{
			
			var img:Sprite = new Sprite();
			//清空图片 
		}
		
	}
}