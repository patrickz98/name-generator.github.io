import 'dart:math';

class NameGenerator
{
	static const maxLength = 8;
	static const words = 300;
	static const contains = "x";

	String genWord(List<String> vocals, List<String> consonances, List<String> s)
	{
		Random random = new Random.secure();
		int nbr = random.nextInt(maxLength) + 1;

		String word = "";

		for (int inx = 0; inx <= nbr; inx++)
		{
			word += s[ random.nextInt(s.length) ];
		}

		int startVowel = random.nextInt(2);
		if (startVowel == 1)
		{
			word = consonances[ random.nextInt(consonances.length) ] + word;
		}

		int endConsonant = random.nextInt(2);
		if (endConsonant == 1)
		{
			word += vocals[ random.nextInt(vocals.length) ];
		}

		return word;
	}

	void main()
	{
		List<String> vocals = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"];
		List<String> consonances = ["a","e","i","o","u"];

		var lenCons = consonances.length;
		List<String> s = [];

		vocals.forEach((String v)
		{
			consonances.forEach((String c)
			{
				s.add(v+c);
			});
		});
		
		int count = 0;
		while (true)
		{
			String word = genWord(vocals, consonances, s);

			print(word);
			count++;

			// if word[ 0 ] == 'x' {
			// 	fmt.Println(word)
			// 	count++
			// }

			// if strings.HasPrefix(word, contains) {
			// 	fmt.Println(word)
			// 	count++
			// }

//			if Levenshtein(word, "android") <= 2 {
//			fmt.Println(word)
//			count++
//			}

			// if strings.Contains(word, contains) {
			// 	fmt.Println(word)
			// 	count++
			// }

			if (count >= words)
			{
				break;
			}
		}
	}
}