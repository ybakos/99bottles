class Bottles
  def bottle_or_bottles(verse_number)
    (verse_number < 2 && verse_number > 0) ? "bottle" : "bottles"
  end

  def verse(verse_number)
    unless verse_number == 0
      verse =
      "#{verse_number} #{bottle_or_bottles(verse_number)} of beer on the wall, " +
      "#{verse_number} #{bottle_or_bottles(verse_number)} of beer.\n" +
      "Take #{verse_number == 1 ? "it" : "one"} down and pass it around, "+
      "#{(verse_number - 1) == 0 ? "no more" : verse_number - 1} #{bottle_or_bottles(verse_number - 1)} of beer on the wall.\n"
    else
      verse =
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
    verse
  end

  def verses(start,stop)
    test_verses = ''
    (start..stop).each do |verse_number|
      test_verses += verse(verse_number)
    end
    test_verses
  end

end
