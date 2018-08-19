import 'dart:html';

import 'Simple.dart';
import 'NameGenerator.dart';

class App
{
	static const HEADLINE_HEIGHT = 60;

	App()
	{
		document.body.style.padding = "0px";
		document.body.style.margin = "0px";
		document.body.style.fontFamily = "Helvetica, Ubuntu, Arial";
		document.body.style.overflow = "hidden";

		buildHeadline();
		buildWordsContainer();
	}

	void buildHeadline()
	{
		DivElement div = Simple.createDiv(
			parent: document.body,
			left: "0px",
			right: "0px",
			height: HEADLINE_HEIGHT.toString() + "px"
		);

		div.style.borderBottom = "2px dotted #6200EE";

		HeadingElement elem = Simple.createH1("Finamo", div);
		elem.style.left     = "0px";
		elem.style.top      = "0px";
		elem.style.right    = "0px";
		elem.style.bottom   = "0px";
		elem.style.color    = "#6200EE";
		elem.style.position = "relative";
		elem.style.textAlign = "center";
		elem.style.boxShadow = "10px 10px 10px #e3e3e3";
	}

	HtmlElement buildWord(String word)
	{
		HtmlElement li = Element.li();
		Simple.resetPaddingMargin(li);

		HeadingElement headLine = HeadingElement.h3();
		Simple.resetPaddingMargin(headLine);
		headLine.style.fontSize = "20px";
		headLine.innerHtml = word;

		li.append(headLine);

		return li;
	}

	void buildWordsContainer()
	{
		DivElement div = Simple.createDiv(
			parent: document.body,
			left: "0px",
			top: HEADLINE_HEIGHT.toString() + "px",
			right: "0px",
			bottom: "0px",
		);

		div.style.overflowY = "scroll";
		div.style.overflowX = "hidden";
//		div.style.alignItems = "center";
//		div.style.alignContent = "center";
		div.style.justifyContent = "center";
		div.style.position = "absolute";
		div.style.display = "flex";

		DivElement wordsCard = Simple.createDiv(
			parent: div,
			width: "500px",
		);

//		wordsCard.style.padding = "20px";
		wordsCard.style.margin = "20px";
//		wordsCard.style.backgroundColor = "#ff0088";
		wordsCard.style.position = "absolute";
		wordsCard.style.border = "1px solid #bbbbbb";
		wordsCard.style.borderRadius = "20px";
		wordsCard.style.boxShadow = "10px 10px 10px #e3e3e3";

		HtmlElement list = buildWordsList();
		wordsCard.append(list);

//		Simple.createH1("test", div);
	}

	HtmlElement buildWordsList()
	{
		NameGenerator generator = new NameGenerator(contains: "x");
		List<String> words = generator.createList(300);

		HtmlElement list = Element.ul();
		Simple.resetPaddingMargin(list);

		document.body.append(list);

		words.forEach((String word)
		{
			HtmlElement wordElem = buildWord(word);
			list.append(wordElem);
		});

		return list;
	}
}