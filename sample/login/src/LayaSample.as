package
{
	import laya.debug.DebugPanel;
	import laya.display.Stage;
	import ui.loginUI;
	import laya.net.Loader;
	import laya.utils.Handler;
	
	public class LayaSample
	{
		
		public function LayaSample()
		{
			//初始化引擎
			Laya.init(600, 400);
			DebugPanel.init();
			Laya.stage.scaleMode = Stage.SCALE_NOSCALE;//不进行缩放
			Laya.stage.alignH = Stage.ALIGN_CENTER;//水平居中对齐
			Laya.stage.alignV = Stage.ALIGN_MIDDLE;//垂直居中对齐
			
			//加载界面内使用的资源
			var resArray:Array = [{url: "res/atlas/comp.json", type: Loader.ATLAS}];
			Laya.loader.load(resArray, Handler.create(this, this.onLoaded));
		}
		
		public function onLoaded():void
		{
			var view:LoginView = new LoginView();
			Laya.stage.addChild(view);
		}
	}
}