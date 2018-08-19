import 'dart:html';

class Simple
{
	static HtmlElement createElem(String tagName, [HtmlElement parent])
	{
		HtmlElement elem = document.createElement(tagName);
		resetPaddingMargin(elem);

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

		div.style.padding = "1xp";
		div.style.margin  = "1xp";

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