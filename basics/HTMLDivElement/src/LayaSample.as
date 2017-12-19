package {
	import laya.events.Event;
	import laya.html.dom.HTMLDivElement;
	import laya.net.HttpRequest;
	import laya.utils.Browser;
	public class LayaSample {
		private var textX:int = 20;
		private var textY:int = 20;
		public function LayaSample() {
			//初始化引擎
			Laya.init(1136, 640);
			Laya.stage.bgColor = "#CCCCCC";

			
	
			toText("LayaBox欢迎你的加入1", null, "http://ask.layabox.com/");
			toText("LayaBox欢迎你的加入2", "color:red", null);
			toText("LayaBox欢迎你的加入3", "color:red", null);
			toText("LayaBox欢迎你的加入4", "color:red", null);
			toText2({
				text:"LayaBox欢迎你的加入5",
				url:"http://ask.layabox.com/",
				style:{
					color:"red",
					fontSize:"20px"
				}
			
			})
	
		}
		//public function 
		
		private function toText(data:String, style:*= null,url:*=null){
			var divHtml:HTMLDivElement = new HTMLDivElement();
			
			var divSpan:String;
			divSpan = '50<span style="' + ((style)?style:'color:#000000;font:20px Arial') + '" ';
			divSpan += ((url)?'href="'+url+'"':'')+'>'+data+'</span>';
			divHtml.innerHTML = divSpan;
			
			divHtml.style.valign = "middle";
			divHtml.style.wordWrap = true;
			divHtml.style.leading = 10;
			divHtml.size(600, 100);
			
			//divHtml.pos(textX, textY);
			//textX += divHtml.contextWidth;
			textX += 0;
			textY += divHtml.contextHeight+10;
			divHtml.on(Event.LINK, this, onLink);
			Laya.stage.addChild(divHtml);
			trace(style);
		}
		
		
		private function toText2(data:Array):void{
			var text = data.text || "LayaBox欢迎你的加入0";
			var url = data.url || "http://ask.layabox.com/";
			var color = data.style.color || "#FFFFFF";
			var lineHeight = data.style.lineHeight || 30;
			
			var divHtml:HTMLDivElement = new HTMLDivElement();
			var divSpan:String;
			
			
		}
		
		
		//跳转点击事件
		private function onLink(data:*):void{
			Browser.window.location.href=data;
		}
	}
}