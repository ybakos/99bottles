class Bottles

  def verse(verse_number)

    if verse_number > 2
      return"#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.\n" +
      "Take one down and pass it around, #{verse_number-1} bottles of beer on the wall.\n"
    elsif verse_number == 2
      return"#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.\n" +
      "Take one down and pass it around, #{verse_number-1} bottle of beer on the wall.\n"
    elsif verse_number == 1
      return"#{verse_number} bottle of beer on the wall, #{verse_number} bottle of beer.\n" +
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif verse_number == 0
      return "No more bottles of beer on the wall, no more bottles of beer.\n" +
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end

  end

  def verses(first_verse_number, last_verse_number)
    first_verse_number.downto(last_verse_number).map { |n| verse(n) }.join("\n")
  end

  def song()
    verses(99,0)
  end

end
