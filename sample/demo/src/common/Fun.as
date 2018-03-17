package common
{
	import laya.display.Animation;
	import laya.net.LocalStorage;
	import laya.ui.Label;
	import laya.utils.Browser;
	import laya.utils.Handler;

	public class Fun{
		private static var _count:int = 1;
		public function Fun(){
			
		}
		
		/**服务端转客户端**/
		public static function getCardByServer(value:int):int{
			if(value>51) return value+1;
			var t:int = value%4;
			var v:int = Math.floor(value/4)+2;
			if(v==14) v=1;
			return t*13+v;
		}
		
		/**客户端转服务端**/
		public static function getCardByClient(val:int):int{
			if(val>52) return val-1;
			var t:int = Math.floor(val/13);
			var v:int = val-t*13;
			if(v==1){
				v = 14;
			}else if(v==0){
				v = 13;
				t = t-1;
			}
			return t+v*4-8;
		}
		
		/**系列化VO**/
		public static function serialize(vo:*,data:Object):*{
			if(!vo||!data) return null;
			for(var key:* in data){
				if(vo.hasOwnProperty(key)){
					vo[key] = data[key];
				}
			}
			return vo;
		}
		
		/**系列化类**/
		public static function serializeByClass(voClass:Class,data:Object):*{
			return serialize(new voClass(),data);
		}
		
		/**获取随机范围小数**/
		public static function random(max:int,min:int=0):int{
			var val:int = Math.random()*(max-min)+min;
			return val;
		}
		
		/**获取随机范围整数**/
		public static function randomInt(max:int,min:int=0):int{
			return Math.round(random(max,min));
		}
		
		/**获取随机布尔值**/
		public static function randomBoolean():Boolean{
			return Math.random()>0.5;
		}
		
		/**获取随机范围数组**/
		public static function randomArray(len:int,max:int,min:int=0):Array{
			var arr:Array = [];
			for(var i:int=0;i<len;i++){
				arr.push(randomInt(max,min));
			}
			return arr;
		}
		
		/**数组乱序**/
		public static function upsetArray(arr:Array):Array{
			arr.sort(function(a:int,b:int):int{
				return randomBoolean()?1:-1;
			});
			return arr;
		}
		
		/**计算两点的距离**/
		public static function distance(x1:Number,y1:Number,x2:Number,y2:Number):Number{
			return Math.sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2));
		}
		
		/**设置字符串颜色**/
		public static function getColorHtml(value:String,color:String):String{
			return '<span style="color:'+color+';">'+value+'</span>';
		}
		
		/**window询问提示**/
		public static function WinConfirm(value:String):Boolean{
			if(Browser.window.confirm(value)){
				return true;
			}
			return false;
		}
		
		/**计时器关闭微信浏览器,获取不到就后退**/
		public static function WeixinJSBridge(view:*,index:int=1000):void{
			Laya.timer.loop(200,view,function():void{
				index-=200;
				if(index>0){
					if (Browser.window.WeixinJSBridge) {
						Browser.window.WeixinJSBridge.call('closeWindow');
					}
				}else{
					trace("后退and关闭");
					Browser.window.history.back();
					Browser.window.location.href="http://www.jinhe88.xyz/";
					Laya.timer.clearAll(view)
				}
			});
			
		}
		/********存本地存储*************/
		public static function LocaSetItem(key:String,value:String):void{
			LocalStorage.setItem(key,value);
		}
		
		/********取本地存储*************/
		public static function LocaGetItem(value:String):String{
			var str:String = LocalStorage.getItem(value);
			return str;
		}
		/********删除本地存储*************/
		public static function LocaRemoveItem(value:String):void{
			LocalStorage.removeItem(value);
		}
		/********查询URL是否有你传进来的参数，否则返回null*************/
		public static function queryURL(name:String):String{
			var r:String =Browser.window.location.search.substr(1).match(new RegExp("(^|&)" + name + "=([^&]*)(&|$)"));
			if (r != null) return unescape(r[2]);
			return null;
		}
		
		/**
		 * 添加后缀URL值
		 * @param value 要存储的值
		 * @param title 标题，最好为null,因为有的浏览器会忽略掉
		 * @param display URL表现的内容
		 */	
		public static function historyPushState(value:Object,title:String,display:String):void{
			Browser.window.history.pushState(value, title, display);
		}
		/**
		 * 修改后缀URL值
		 * @param value 要存储的值
		 * @param title 标题，最好为null,因为有的浏览器会忽略掉
		 * @param display URL表现的内容
		 */	
		public static function historyReplaceState(value:Object,title:String,display:String):void{
			Browser.window.history.replaceState(value, title, display);
		}
		/**
		 * 判断后缀URL值
		 * @param value 要存储的值
		 * @param title 标题，最好为null,因为有的浏览器会忽略掉
		 * @param display URL表现的内容
		 */	
		public static function historyOnpopstate (value:String,fun:Function):void{
			Browser.window.onpopstate = function(event) {
				trace(event);
			};
		}
		/**
		 * 图集动画
		 * @param url 动画存放路径
		 * @param handler 回调函数
		 * @param isCache 是否存到动画模版缓存池中
		 */	
		public static function getEffect(url:String,handler:Handler,isCache:Boolean=true):void{
			var ani:Animation = new Animation();
			handler.args = [ani];
			ani.loadAtlas(url,handler,isCache?("ANI"+_count++):"");
		}
		
		/**
		 * 滚动文本
		 * @param label 要赋值的Label
		 * @param value 值
		 * @param time 动画时间
		 * @param delay 动画间隔
		 */		
		public static function scrollText(label:Label,value:int,time:int=1000,delay:int=30):void{
			Laya.timer.clear(null,run);
			var cur:int = parseInt(label.text);
			if(cur==value) return;
			if(isNaN(cur)) cur=0;
			var step:int = Math.ceil(Math.abs(value-cur)/time*delay);
			var isAdd:Boolean = value>cur;
			function run():void{
				var isClear:Boolean;
				if(isAdd){
					cur+=step;
					isClear = cur>=value;
				}else{
					cur-=step;
					isClear = cur<=value;
				}
				if(isClear){
					Laya.timer.clear(null,run);
					cur = value;
				}
				label.text = cur+"";
			}
			Laya.timer.loop(delay,null,run);
		}
	}
}