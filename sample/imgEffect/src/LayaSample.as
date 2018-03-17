package {
	import laya.utils.Browser;
	import view.indexView;
	import laya.display.Stage;
	import laya.net.Loader;
	import laya.utils.Handler;
	public class LayaSample {
		
		public function LayaSample() {
			//初始化引擎
			Laya.init(Browser.clientWidth, Browser.clientHeight);
			Laya.stage.bgColor = "#FFFFFF";
			Laya.stage.scaleMode = Stage.SCALE_NOSCALE;//不进行缩放
			Laya.stage.alignH = Stage.ALIGN_CENTER;//水平居中对齐
			Laya.stage.alignV = Stage.ALIGN_MIDDLE;//垂直居中对齐
			//加载界面内使用的资源
			var resArray:Array = [{url: "res/atlas/comp.atlas", type: Loader.ATLAS}];
			Laya.loader.load(resArray, Handler.create(this, this.onLoaded));
		}
		public function onLoaded():void{
			var vie:indexView = new indexView();
			Laya.stage.addChild(vie);
		}		
	}
}