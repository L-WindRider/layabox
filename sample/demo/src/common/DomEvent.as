package common
{
	import laya.utils.Browser;
	import laya.utils.Utils;

	public class DomEvent
	{
		/*******粘贴板使用的输入框*******/
		private static var textarea:*;
		/*******DOM浮出点击容器*******/
		private static var buttonContainer:*;
		/*******button数据存储*******/
		private static var buttonContainerArr:Array=[];
		
		public function DomEvent()
		{
			
		}
		/**
		 * 复制到粘贴板
		 * @param str 复制到粘贴板的数据
		 */	
		public static function clipboard(str:String):void{
			if(!textarea){
				textarea =Browser.document.createElement("textarea");
				Browser.document.body.appendChild(textarea);
				textarea.setAttribute('readonly', '');
				textarea.style="position: fixed;left: 100%;";
			}
			textarea.value = str;
			textarea.select();
			textarea.setSelectionRange(0, textarea.value.length);
			if(Browser.document.execCommand("Copy")){
				trace("复制成功！");
			}else{
				trace("不支持复制到粘贴板功能");
			}
		}
		
		/**
		 * 复制到粘贴板
		 * @param str 复制到粘贴板的数据
		 */	
		public static function deleteButton(_this:*):void{
			for (var i:int = 0; i < buttonContainerArr.length; i++){
				if(buttonContainerArr[i].laya==_this){ //判断是否有此laya中节点
					if(buttonContainerArr[i].state){ //判断DOM是否为销毁状态
						buttonContainerArr[i].dom.remove();
						buttonContainerArr[i].dom="";
					}
					return;	
				}
			}
		}
		
		/**
		 * 在canvas同级的div中新建
		 * @param _this layabox中节点
		 * @param fun 执行的Function
		 * @param parameter 携带的参数
		 */	
		public static function domEvent(_this:*,fun:Function,parameter:*=null):void{
			if(!buttonContainer){ //判断是否有div--容器
				buttonContainer=Browser.createElement("div");
				buttonContainer.style.position = "absolute";
				buttonContainer.style.zIndex = 1E5;
				Browser.container.appendChild(buttonContainer);
			}
			var transform:Object = Utils.getTransformRelativeToWindow(_this, 0, 0);
			var buttonElement:*=Browser.createElement("button");
			buttonElement.style.cssText = "position:absolute;overflow:hidden;resize:none;transform-origin:0 0;-webkit-transform-origin:0 0;-moz-transform-origin:0 0;-o-transform-origin:0 0;";
			buttonElement.style.resize = 'none';
			buttonElement.style.backgroundColor = 'transparent';
			buttonElement.style.border = 'none';
			buttonElement.style.outline = 'none';
			buttonElement.style.padding = 0;
			buttonElement.style.zIndex = 1;
			buttonElement.style.width = _this.displayWidth + 'px';
			buttonElement.style.height=_this.displayHeight + 'px';
			buttonElement.style.transform = buttonContainer.style.webkitTransform = "scale(" + transform.scaleX + "," + transform.scaleY + ") rotate(" + (Laya.stage.canvasDegree) + "deg)";
			buttonElement.style.left = transform.x + 'px';
			buttonElement.style.top  = transform.y + 'px';
			buttonElement.onclick=function():void{
				fun(parameter);
			}
			buttonContainer.appendChild(buttonElement);
			for (var i:int = 0; i < buttonContainerArr.length; i++){
				if(buttonContainerArr[i].laya==_this){ //判断是否有此laya中节点
					buttonContainerArr[i].dom.remove();
					buttonContainerArr[i].dom=buttonElement;
					buttonContainer.appendChild(buttonElement);
					
				}
			}
			var obj:Object={laya:_this};
			obj.dom=buttonElement;
			buttonContainerArr.push(obj);
			
		}
	}
}