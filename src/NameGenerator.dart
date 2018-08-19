import 'dart:math';

class NameGenerator
{
	static const _maxIterations = 10000;

	final int maxLength;
	final String contains;

	List<String> _vocals = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"];
	List<String> _consonances = ["a","e","i","o","u"];
	List<String> _pairs;

	NameGenerator({
		this.maxLength: 8,
		this.contains: "",
	})
	{
		_pairs = [];

		_vocals.forEach((String v)
		{
			_consonances.forEach((String c)
			{
				_pairs.add(v+c);
			});
		});

	}

	String genWord()
	{
		Random random = new Random.secure();
		int nbr = random.nextInt(maxLength) + 1;

		String word = "";

		for (int inx = 0; inx <= nbr; inx++)
		{
			word += _pairs[ random.nextInt(_pairs.length) ];
		}

		int startVowel = random.nextInt(2);
		if (startVowel == 1)
		{
			word = _consonances[ random.nextInt(_consonances.length) ] + word;
		}

		int endConsonant = random.nextInt(2);
		if (endConsonant == 1)
		{
			word += _vocals[ random.nextInt(_vocals.length) ];
		}

		return word;
	}

	List<String> createList(int words)
	{
		int iterations = 0;

		List<String> wordList = [];
		while (words > wordList.length)
		{
			String word = genWord();

			if (word.contains(contains))
			{
				wordList.add(word);
			}

			if (iterations >= _maxIterations)
			{
				break;
			}

			iterations++;
		}

		return wordList;
	}
}