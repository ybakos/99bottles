class Bottles
  def verse(verse_number)
    "#{verse_number} bottles of beer on the wall, " +
    "#{verse_number} bottles of beer.\n" 
     no_bottles_left(verse_number)
     one_bottle_left(verse_number)
  end

  def one_bottle_left(verse_number)
    if (verse_number -1) == 1
      "#{verse_number - 1} bottle of beer on the wall.\n"
    else
      "#{verse_number - 1} bottles of beer on the wall.\n"
    end
  end

  def no_bottles_left(verse_number)
    if (verse_number -1) == 0
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    end
  end
end