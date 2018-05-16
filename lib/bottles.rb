class Bottles

  def verse(verse_number)
    # @verse_number = verse_number

    return first_line(verse_number) << second_line(verse_number)

  end

  def verses(first_verse_number, second_verse_number)

    return first_line(first_verse_number) << second_line(first_verse_number) +
     "\n" +
     first_line(second_verse_number) << second_line(second_verse_number)

  end

  def first_line(verse_number)

    if verse_number > 2
      return"#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.\n"
    elsif verse_number == 2
      return"#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.\n"
    elsif verse_number == 1
      return"#{verse_number} bottle of beer on the wall, #{verse_number} bottle of beer.\n"
    elsif verse_number == 0
      return "No more bottles of beer on the wall, no more bottles of beer.\n"
    end

  end

  def second_line(verse_number)
    if verse_number > 2
      return "Take one down and pass it around, #{verse_number-1} bottles of beer on the wall.\n"
    elsif verse_number == 2
      return "Take one down and pass it around, #{verse_number-1} bottle of beer on the wall.\n"
    elsif verse_number == 1
      return "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif verse_number == 0
      return "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end

  end

end
