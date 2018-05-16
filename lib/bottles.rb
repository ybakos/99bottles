class Bottles
	def verse(bottles_of_beer)
		(bottles_of_beer - 1) > 1 ? pluralVerse(bottles_of_beer) : singularVerse(bottles_of_beer)
	end

	def pluralVerse(bottles_of_beer)
		"#{bottles_of_beer} bottles of beer on the wall, #{bottles_of_beer} bottles of beer." +
		"\nTake one down and pass it around, #{bottles_of_beer - 1} bottles of beer on the wall.\n"
	end

	def singularVerse(bottles_of_beer)
		(bottles_of_beer) == 2 ?
		"#{bottles_of_beer} bottles of beer on the wall, #{bottles_of_beer} bottles of beer." +
		"\nTake one down and pass it around, #{bottles_of_beer - 1} bottle of beer on the wall.\n"
		: bottles_of_beer == 0 ?
		"No more bottles of beer on the wall, no more bottles of beer." +
		"\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
		:
		"#{bottles_of_beer} bottle of beer on the wall, #{bottles_of_beer} bottle of beer." +
		"\nTake it down and pass it around, no more bottles of beer on the wall.\n"
	end

	def verses(verse1, verse2)
		"#{verse1} bottles of beer on the wall, #{verse1} bottles of beer." +
		"\nTake one down and pass it around, #{verse1 - 1} bottles of beer on the wall.\n" +
		"\n#{verse2} bottles of beer on the wall, #{verse2} bottles of beer." +
		"\nTake one down and pass it around, #{verse2 - 1} bottles of beer on the wall.\n"
	end
end