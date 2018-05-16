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

  def verses(current_verse, end_verse)
    return_string = ""
    while current_verse != end_verse
      return_string << verse(current_verse) << "\n"
      current_verse -= 1
    end
    return_string
  end

end
