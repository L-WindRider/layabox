package {
	
	import laya.display.Stage;
    import laya.display.Text;
    import laya.resource.Texture;
    import laya.utils.Handler;
    import laya.display.BitmapFont;
	public class LayaSample {
		//自定义文件名称
		private var mFonName:String="diyFont";
		private var mBitmapFont:BitmapFont;
		public function LayaSample() {
			//初始化引擎
			Laya.init(550, 400);
			mBitmapFont = new BitmapFont();
			//这里不需要扩展名，外部保证fnt和png文件同名
			mBitmapFont.loadFont("textBitmap/test.fnt",new Handler(this,onLoaden));
		}
		private function onLoaden():void{
			init();
		}
		
		private function init():void{
			//如果位图字体中，没放空格，最好设置一个空格宽度
			mBitmapFont.setSpaceWidth(20);
			
			Text.registerBitmapFont(mFonName, mBitmapFont);
			var txt:Text = new Text();
			txt.text = "这是layabox测试文件";
			//设置宽度，高度自动匹配
			txt.width = 250;
			//自动换行
			txt.wordWrap = true;
			txt.align = "center";
			//使用我们注册的字体
			txt.font = this.mFonName;
			txt.fontSize = 100;
			txt.leading = 5;
			Laya.stage.addChild(txt);
		}
	}
}