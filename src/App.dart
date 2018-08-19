import 'dart:html';

import 'Simple.dart';
import 'NameGenerator.dart';

class App
{
	final BodyElement _body = document.body;

	void buildHeadline()
	{
		DivElement div = Simple.createDiv(
			parent: _body,
			left: "0px",
			right: "0px",
			height: "75px"
		);

		div.style.backgroundColor = "#ff00ff";

		HtmlElement elem = Simple.createElem("h1", div);
		elem.innerHtml = "Hallo Welt";
	}
	
	void build()
	{
		buildHeadline();

		NameGenerator generator = new NameGenerator(contains: "x");
		List<String> words = generator.createList(100);

		document.body.appendHtml("Haloo");
		document.body.appendText(words.toString());

		document.body.style.padding = "0px";
		document.body.style.margin = "0px";
	}
}