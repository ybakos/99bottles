class Bottles

  def verse(verse_number)
    if verse_number == 2
      two_bottles_verse(verse_number)
    elsif verse_number == 1
      one_bottle_verse(verse_number)
    elsif verse_number == 0
      no_bottles_verse
    else
      main_verse(verse_number)
    end
  end

  def main_verse(verse_number)
    "#{verse_number} bottles of beer on the wall, " +
    "#{verse_number} bottles of beer.\n" +
    "Take one down and pass it around, " +
    "#{verse_number - 1} bottles of beer on the wall.\n"
  end

  def two_bottles_verse(verse_number)
    "#{verse_number} bottles of beer on the wall, " +
    "#{verse_number} bottles of beer.\n" +
    "Take one down and pass it around, " +
    "#{verse_number - 1} bottle of beer on the wall.\n"
  end

  def one_bottle_verse(verse_number)
    "#{verse_number} bottle of beer on the wall, " +
    "#{verse_number} bottle of beer.\n" +
    "Take it down and pass it around, " +
    "no more bottles of beer on the wall.\n"
  end

  def no_bottles_verse
    "No more bottles of beer on the wall, " +
    "no more bottles of beer.\n" +
    "Go to the store and buy some more, " +
    "99 bottles of beer on the wall.\n"
  end

  def verses(first_verse_number, second_verse_number)
    all_verses = ""
    (first_verse_number).downto(second_verse_number).each do |n|
      all_verses += verse(n)
      if n != second_verse_number
        all_verses += "\n"
      end
    end
    all_verses
  end

  def song
    verses(99, 0)
  end

end