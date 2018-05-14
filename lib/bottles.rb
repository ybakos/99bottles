class Bottles

  def verse(count)
    "#{count} bottles of beer on the wall, #{count} bottles of beer.\n" +
    if count > 2
      "Take one down and pass it around, #{count - 1} bottles of beer on the wall.\n"
    else
      "Take one down and pass it around, #{count - 1} bottle of beer on the wall.\n"
    end
  end

end