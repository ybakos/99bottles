class Bottles

  def verse (num_bottles)
    output = "#{num_bottles} bottles of beer on the wall, #{num_bottles} bottles of beer.\n"

    if num_bottles == 0
      output = "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    elsif num_bottles == 1
      output = "#{num_bottles} bottle of beer on the wall, #{num_bottles} bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    elsif num_bottles - 1 > 1
      output += "Take one down and pass it around, #{num_bottles - 1} bottles of beer on the wall.\n"
    else
      output += "Take one down and pass it around, #{num_bottles - 1} bottle of beer on the wall.\n"
    end

    output
  end

  def verses(first, second)
  end

end