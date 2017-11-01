package {
	import laya.display.Text;
	import laya.display.Stage;
	import laya.events.Event;
	import laya.ui.TextInput;
	import laya.utils.Browser;
	import laya.webgl.WebGL;
	public class LayaSample {
		private var txt:Text;
		private var prevX:Number = 0;
        private var prevY:Number = 0;
		public function LayaSample() {
			//初始化引擎
			//不支持WebGL时自动切换至Canvas
			Laya.init(Browser.clientWidth, Browser.clientHeight,WebGL);
			Laya.stage.bgColor = "#FF9800";//设置画布的背景颜色
			
			basics_align();//启动基础and对齐自动换行设置
			setup();//启动overflow检测
			Text_InputSingleline ();//单行输入
			Text_InputMultiline();//多行输入
		}
/*********************文本设置********************************/
		private function basics_align():void{
			txt = new Text();
			txt.text = "Hello_world";//文本内容
			txt.color = "#FFFFFF";//文本颜色
			txt.font = "Ya hei";//文本字体
			txt.fontSize = 20;//文本大小
			txt.bgColor = "#c30c30";//文本区背景
			txt.borderColor = "#23cfcf";//文本框颜色
			txt.bold = true;//文本粗体
			txt.italic = true;//文本斜体
			txt.padding = [2, 15, 2, 5];//文本内边距边距
			txt.align = "center";//水平居中
			txt.valign = "middle";//垂直居中
			txt.width = 600;//文本宽度
			txt.height = 100;//文本高度
			txt.x = 100;//设置 txt 对象的属性 x 的值，用于控制 txt 对象的显示位置。
			txt.y = 20;//设置 txt 对象的属性 y 的值，用于控制 txt 对象的显示位置。
			Laya.stage.addChild(txt);//加载到舞台上
			
		}
/*********************overflow设置********************************/
        private function createText():Text{
			txt = new Text();
			txt.text =
			 "Layabox是HTML5引擎技术提供商与优秀的游戏发行商，面向AS/JS/TS开发者提供HTML5开发技术方案！\n" +
             "Layabox是HTML5引擎技术提供商与优秀的游戏发行商，面向AS/JS/TS开发者提供HTML5开发技术方案！\n" +
             "Layabox是HTML5引擎技术提供商与优秀的游戏发行商，面向AS/JS/TS开发者提供HTML5开发技术方案！"; 
			txt.borderColor = "#FFFF00";
			//设置宽高以后自动剪裁会按照这个区域剪裁
			txt.size(300, 50);
			txt.fontSize = 20;
			txt.color = "#FFFFFF";
			Laya.stage.addChild(txt);
			return txt;
		}
		private function setup():void{
			var t1:Text = createText();
			//设置不进行剪裁
			t1.pos(10, 10);
			t1.y = 150;//设置 t1 对象的属性 y 的值，用于控制 t1 对象的显示位置。
			var t2:Text = createText();
			//设置不显示文本区域外的字符
			t2.overflow = Text.VISIBLE;
			t2.pos(10, 110);
			t2.y = 220;//设置 t2 对象的属性 y 的值，用于控制 t2 对象的显示位置。
			var t3:Text = createText();
			//设置不显示超出文本的字符
			t3.overflow = Text.HIDDEN;
			t3.pos(10, 100);
			t3.y = 300;//设置 t3 对象的属性 y 的值，用于控制 t3 对象的显示位置。
			
			var t4:Text = createText();
			//设置滚动文本区域外的字符
			t4.overflow = Text.SCROLL;
			t4.pos(10, 110);
			t4.y = 400;//设置 t4 对象的属性 y 的值，用于控制 t4 对象的显示位置。
			t4.on(Event.MOUSE_DOWN, this, startScrollText);
		}
		//开始滚动文本
		private function startScrollText(e:Event):void{
			
			prevX = txt.mouseX;
            prevY = txt.mouseY;
            Laya.stage.on(Event.MOUSE_MOVE, this, scrollText);
            Laya.stage.on(Event.MOUSE_UP, this, finishScrollText);
		}
		//停止滚动文本
		private function finishScrollText(e:Event):void{
			Laya.stage.off(Event.MOUSE_MOVE, this, scrollText);
            Laya.stage.off(Event.MOUSE_UP, this, finishScrollText);
		}
		//鼠标滚动文本
		private function scrollText(e:Event):void{
			var nowX:Number = txt.mouseX;
            var nowY:Number = txt.mouseY;
            txt.scrollX += prevX - nowX;
            txt.scrollY += prevY - nowY;
            prevX = nowX;
            prevY = nowY;
		}
/**********************textInput单行输入and多行输入********************************/

        private function Text_InputSingleline():void{
			var textInput:TextInput = new TextInput("单行输入");//创建一个textInput类的实例对象 textInput。
			textInput.wordWrap = true;//设置textInput 的文本自动换行
			textInput.fontSize = 30;//设置 textinput的字体大小
			textInput.x = 0;
			textInput.y = 500;
			textInput.width = 300;
			textInput.height = 200;
			textInput.bgColor = "#c30c30";
			Laya.stage.addChild(textInput);
		}
		private function Text_InputMultiline():void{
			var textInput:TextInput = new TextInput("多行输入");
			textInput.wordWrap = true;
			textInput.multiline = true;//设置textInput多行输入
			textInput.fontSize = 30;
			textInput.x = 0;
			textInput.y = 720;
			textInput.width = 300;
			textInput.height = 200;
			textInput.bgColor = "#c30c30";
			Laya.stage.addChild(textInput);
		}
		
	}
}