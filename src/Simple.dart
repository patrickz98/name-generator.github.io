import 'dart:html';

class Simple
{
	static HeadingElement createElem(String tagName, [HtmlElement parent])
	{
		HeadingElement elem = document.createElement(tagName);
		elem.style.padding = "0px";
		elem.style.margin  = "0px";

		if (parent != null)
		{
			parent.append(elem);
		}

		return elem;
	}
	
	static HeadingElement createH1(String title, [HtmlElement parent])
	{
		HeadingElement elem = HeadingElement.h1();
		elem.style.padding = "0px";
		elem.style.margin  = "0px";
		elem.style.lineHeight = "60px";
		elem.style.fontSize = "30px";
		elem.innerHtml = title;

		if (parent != null)
		{
			parent.append(elem);
		}

		return elem;
	}

	static HtmlElement createDiv({
		HtmlElement parent,
		String left, String top, String right, String bottom,
		String width, String height
	})
	{
		DivElement div = new DivElement();
		div.style.left   = left;
		div.style.top    = top;
		div.style.right  = right;
		div.style.bottom = bottom;

		div.style.width  = width;
		div.style.height = height;

//		div.style.padding = "1xp";
//		div.style.margin  = "1xp";

		if (parent != null)
		{
			parent.append(div);
		}

		return div;
	}

	static void resetPaddingMargin(HtmlElement elem)
	{
		elem.style.padding = "0xp";
		elem.style.margin  = "0xp";
	}
}