package 
{
	import laya.html.dom.HTMLDivElement;
	/**
	 * ...
	 * @author heheda
	 */
	public class NewClass 
	{
		
		public function NewClass() 
		{
			var t:HTMLDivElement = new HTMLDivElement ;
			Laya.stage.addChild(t);
			t.style.valign = "middle";
        t.size(60, 120);
        t.style.wordWrap = true;
        t.style.leading = 10;
        t.innerHTML = "akshfkjashfkjhakshjdfhkasjdfhsaf";
		}
		
	}

}