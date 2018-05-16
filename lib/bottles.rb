class Bottles

  def verse(num_bottles)
    case num_bottles
    when 2
      "#{num_bottles} bottles of beer on the wall, #{num_bottles} bottles of beer.\nTake one down and pass it around, #{num_bottles - 1} bottle of beer on the wall.\n"
    when 1
      "#{num_bottles} bottle of beer on the wall, #{num_bottles} bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{num_bottles} bottles of beer on the wall, #{num_bottles} bottles of beer.\nTake one down and pass it around, #{num_bottles - 1} bottles of beer on the wall.\n"
    end
  end

  def verses(first, last)
    first.downto(last).map { |verse_num| verse(verse_num)}.join("\n")
  end

  def song
  end

end