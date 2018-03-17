package module
{
	import laya.display.Sprite;
	import laya.utils.Handler;
	
	import ui.ButtonListUI;

	/**
	 * liuhe
	 */
	public class ButtonListView extends ButtonListUI{
		private var buttonData:Array=[
			{name:"input",view:DomButtonView},
			{name:"投票记录",view:ScreensaverView}
		];
		private var _layer:Sprite;
		private var _curViewIndex:int = -1;							
		private var viewList:Array=new Array(buttonData.length);
		
		public function ButtonListView(){
			_layer = new Sprite();
			_layer.pos(90,0);
			addChild(_layer);
			onSelect(0);
			buttonList.array=[];
			for (var i:int = 0; i < buttonData.length; i++) {
				buttonList.array.push({
					name:{label:buttonData[i].name}
				});
			}
			
			buttonList.vScrollBarSkin=null;
			buttonList.selectEnable=true;
			buttonList.scrollBar.elasticBackTime = 150;
			buttonList.scrollBar.elasticDistance = 200;
			buttonList.selectHandler=Handler.create(this,onSelect,null,false);
		}
		
		private function onSelect(index:int):void{
			if(_curViewIndex==index) return;						
			var view:Sprite = viewList[index];
			if(!view){
				view = new buttonData[index].view();				
				viewList[index] = view;	
				view.mouseThrough=true;
			}
			_layer.removeChildren();
			view["openClass"]&&view["openClass"]();
			_layer.addChild(view);
			_curViewIndex = index;
		}
	}
}