import 'dart:html';

import 'NameGenerator.dart';

class Main
{
	void run()
	{
		print("Hallo Pallo");
		NameGenerator namegen = new NameGenerator();
		namegen.main();
	}
}

void main()
{
	new Main().run();
}