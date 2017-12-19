package {
	import laya.display.Animation;
	import laya.display.Stage;
	import laya.maths.Rectangle;
	import laya.net.Loader;
	import laya.utils.Handler;
	import view.index;
	public class LayaSample {
		
		//public var roleAni:Animation;
		
		public function LayaSample() {
			//初始化引擎
			Laya.init(750, 750);
			Laya.stage.scaleMode = Stage.SCALE_NOSCALE;//不进行缩放
			Laya.stage.alignH = Stage.ALIGN_CENTER;//水平居中对齐
			Laya.stage.alignV = Stage.ALIGN_MIDDLE;//垂直居中对齐
			//Laya.stage.bgColor = "#CCCCCC";//背景设置
			var resArray:Array = [{url: "res/atlas/comp.atlas", type: Loader.ATLAS}];
			Laya.loader.load(resArray, Handler.create(this, this.onIndex));
			
			/*//实例化动画
			roleAni = new Animation();
			roleAni.loadAtlas("res/atlas/role.atlas",Handler.create(this,this.onComplete));*/
			
		}
		
		private function onIndex():void
		{
			var view:index = new index();
			Laya.stage.addChild(view);
		}
		
		/*private function onComplete():void
		{
			Laya.stage.addChild(roleAni);//动画的加载
			//roleAni.play();//动画播放--播放所有动画
			roleAni.interval = 100;//动画的间隔时间为100毫秒
			
			//roleAni.size(100, 100);//设置动画的宽高--默认动画宽高为0
			//roleAni.pos((Laya.stage.width - roleAni.width) / 2, (Laya.stage.height - roleAni.height) / 2);//pos设置显示位置
			
			//声明一个矩形，计算较大，看说明，建议手动设置宽高
			var rec:Rectangle = roleAni.getBounds();
			roleAni.pos((Laya.stage.width - rec.width) / 2, (Laya.stage.height - rec.height) / 2);
			
			trace(roleAni.width, roleAni.height);//打印动画的宽高，默认没有宽高
			
			//动画实例创建
			roleAni.loadImages(createUrls(7, "stand"), "stand");//传值进去，取名为stand
			roleAni.loadImages(createUrls(8, "move"), "move");//传值进去，取名为move
			//类方法，静态方法创建动画
			Animation.createFrames(createUrls(7, "attack"), "attack");//传值进去，取名为attack
			Animation.createFrames(createUrls(8, "die"), "die");//传值进去，取名为die
			//播放动画
			roleAni.play(0, true, "die");//选择一个动画进行播放
		}
		
		public function createUrls(num:int,action:String):Array //num动画的总帧数，action为动作名
		{
			var arr:Array = [];
			for (var i:int = 0; i < num;i++ ){
				arr.push("role/"+action+i+".png");//把所有的资源都放到数组里面
			}
			return arr;
		}*/
		
	}
}