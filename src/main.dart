import 'dart:html';

import 'NameGenerator.dart';

class Main
{
	void run()
	{
		print("Hallo Pallo");
		NameGenerator generator = new NameGenerator(contains: "x");
		List<String> words = generator.createList(100);

		document.body.appendHtml("Haloo");
		document.body.appendText(words.toString());
	}
}

void main()
{
	new Main().run();
}