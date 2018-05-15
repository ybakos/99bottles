class Bottles

  def verse(count)
    if count == 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      bottle = count == 1 ? "bottle" : "bottles"
      "#{count} #{bottle} of beer on the wall, " +
      "#{count} #{bottle} of beer.\n" +
      if count == 1
        "Take it down and pass it around, no more bottles of beer on the wall.\n"
      else
        "Take #{ count == 1 ? "it" : "one" } down and pass it around, #{count - 1} " +
        "#{ count > 2 ? "bottles" : "bottle" } of beer on the wall.\n"
      end
    end
  end

end