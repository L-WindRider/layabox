package {
	
	import laya.display.Sprite;
	import laya.events.Event;
	import laya.net.Loader;
	import laya.ui.Box;
	import laya.ui.CheckBox;
	import laya.ui.Clip;
	import laya.utils.Handler;
	
	import ui.test.ListPageUI;
	
	public class LayaUISample {

		private var listP:ListPageUI;//UI面板
		private var arr:Array;//list数据数组
		
		public function LayaUISample() {
			//初始化引擎
			Laya.init(600, 800);
			Laya.stage.bgColor = "#ffcccc";
			//加载界面需要的资源文件
			Laya.loader.load([{url: "res/atlas/comp.json", type: Loader.ATLAS}], Handler.create(this, onLoaded));
		}
		
		private function onLoaded():void {
			//实例UI界面
			listP = new ListPageUI();
			Laya.stage.addChild(listP);
			
			Laya.timer.once(1000,this,onAdd);//1000毫秒后初始化list数据
			listP.add.on(Event.CLICK,this,onAddClick);//点击添加按钮
			listP.remove.on(Event.CLICK,this,onRemoveClick);//点击删除按钮
		}
		private function onAdd():void
		{
			//添加list数据
			arr = [];
			for (var i:int = 0; i < 9; i++) {
				arr.push({clip: i % 9,isCheck:false,isRemove:false});
			}
			listP._list.vScrollBarSkin='';//添加list滚动条功能（UI不可显示）
			listP._list.array = arr;//数据赋值
			//list渲染函数
			listP._list.renderHandler=new Handler(this,onRender);
			//list鼠标事件触发函数
			listP._list.mouseHandler = new Handler(this,onMouse);
		}
		//鼠标事件添加
		private function onMouse(e:Event,index:int):void
		{
			//鼠标单击事件触发
			if(e.type == Event.CLICK)
			{//如果点中的是checkBox组件
				if((e.target) is CheckBox)
				{
					var tempObj:Object = arr[index];//记录当前条目所包含组件的数据信息(避免后续删除条目后数据结构显示错误)
					if(((e.target) as CheckBox).selected)//根据check的选中状态，设置条目的数据信息
					{
						listP._list.setItem(index,{clip: tempObj.clip,isCheck:true});
					}
					else
					{
						listP._list.setItem(index,{clip: tempObj.clip,isCheck:false});
					}
				}
			}
			var sp:Sprite=new Sprite();
		}
		//渲染List
		private function onRender(cell:Box,index:int):void
		{
			//如果索引不再可索引范围，则终止该函数
			if(index<0||index>arr.length)return;
			var data:Object=arr[index];//获取当前渲染条目的数据
			var clip:Clip=cell.getChildByName("clip") as Clip;//获取当前渲染条目的clip组件
			var check:CheckBox=cell.getChildByName("check") as CheckBox;//获取当前渲染条目的check组件
			clip.index=data.clip;//为clip组件渲染数据
		//根据isCheck的值，确定当前check组件是否为勾选状态（可以避免出现其他多余的选中状态）
			if(data.isCheck)
			{
				check.selected=true;
			}
			else
			{
				check.selected=false;
			}
		}
		//添加新的条目
		private function onAddClick():void
		{
			listP._list.addItem({clip: arr.length%9,isCheck:false});
		}
		//移除选中的条目
		private function onRemoveClick():void
		{
			//创建一个新的数组，存放移除条目后的数据
			var temp:Array = [];
			for(var i:int=0;i<arr.length;i++)
			{
				//将非选中状态的条目数据存储起来
				if(!arr[i].isCheck)
				{
					temp.push(arr[i]);
				}
			}
			arr = null;
			arr = temp;
			listP._list.array = arr;//将新的数组赋值给list
		}
	}
}