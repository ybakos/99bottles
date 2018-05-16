class Bottles

  def verse(verse)
    starting_bottles_verse = "#{verse} bottles"
    remaining_bottles_verse = "#{verse-1} bottles"
    one_or_it = "one"

    if verse == 2 then 
      remaining_bottles_verse = "#{verse-1} bottle"
    end
    if verse == 1 then 
      starting_bottles_verse = "#{verse} bottle"
      one_or_it = "it"
      remaining_bottles_verse = "no more bottles"
    end

    if verse > 0 then
      "#{starting_bottles_verse} of beer on the wall, " +
      "#{starting_bottles_verse} of beer.\n" +
      "Take #{one_or_it} down and pass it around, " +
      "#{remaining_bottles_verse} of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, "+
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    end
  end

  def verses(start_verse, end_verse)
    start_verse.downto(end_verse).map { |n| verse(n) }.join "\n"
  end

  def song
    verses(99, 0)
  end

end
