package 
{
	import laya.utils.Handler;
	import ui.ServerListUI;
	
	/**
	 * ...
	 * @author heheda
	 */
	public class ServerView extends ServerListUI 
	{
		private var lastSelect:int;
		public function ServerView() 
		{
			//设置属性值
			//this.txt.dataSource = "text";//默认写法
			//this.txt.dataSource = {text:"textvalue",fontSize:20};//完整写法
			lastSelect =-1;//默认值
			var data:Array = [];
			for (var i:int = 0; i < 50; i++)
			{
				data.push({
					server:{selected:false, label:"服务器" + (i + 1)},
					flag:{text:(i<3)?"（推荐）":""}
				});
			}
			this.list_server.array = data;//赋值
			this.list_server.selectEnable = true;//设置可以选择
			this.list_server.scrollBar.elasticDistance = 100;//橡皮筋回弹的极限距离
			this.list_server.scrollBar.elasticBackTime = 200;//橡皮筋回弹的时间（单位：毫秒）
			this.list_server.scrollBar.hide = true;//隐藏滚动条
			this.list_server.selectHandler = Handler.create(this, this.onSelect, null, false);//4设置为false是因为默认为true(只执行一次)
			this.list_server.selectedIndex = 0;//设置选择项为0，第一项
			
		}
		private function onSelect(index:int):void
		{
			
			if (lastSelect !=-1)//判断lastSelect是否为-1，意为判断是否有原来的值
			{
				this.list_server.setItem(lastSelect,{
					server:{selected:false, label:"服务器" + (lastSelect + 1)},
					flag:{text:(lastSelect<3)?"（推荐）":""}
				});
			}
			this.list_server.setItem(index,{
					server:{selected:true, label:"服务器" + (index + 1)},
					flag:{text:(index<3)?"（推荐）":""}
			});
				
			lastSelect = index;
			trace(this.list_server.array);//打印数组
			
		}
	}

}