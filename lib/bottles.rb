class Bottles

  def verse (num_bottles)
    output = "#{num_bottles} bottles of beer on the wall, #{num_bottles} bottles of beer.\nTake one down and pass it around, "

    if num_bottles - 1 > 1
      output += "#{num_bottles - 1} bottles of beer on the wall.\n"
    else
      output += "#{num_bottles - 1} bottle of beer on the wall.\n"
    end

    output

  end

end