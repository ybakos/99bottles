class Bottles

  def verse(bottles)
    if bottles > 0
      verse = "#{count(bottles)} #{pluralator(bottles)} of beer on the wall, " +
        "#{count(bottles)} #{pluralator(bottles)} of beer.\n" +
        "Take #{pronouner(bottles)} down and pass it around, " +
        "#{count(bottles - 1)} #{pluralator(bottles - 1)} of beer on the wall.\n"
    else
      verse = "No more bottles of beer on the wall, " +
        "no more bottles of beer.\n" +
        "Go to the store and buy some more, " +
        "99 bottles of beer on the wall.\n"
    end
    return verse
  end

  def count(bottles)
    if bottles == 0
      return "no more"
    else
      return bottles
    end
  end

  def pluralator(bottles)
    if bottles == 1
      return "bottle"
    elsif bottles == 0
      return "bottles"
    else
      return "bottles"
    end
  end

  def pronouner(bottles)
    if bottles == 1
      return "it"
    else
      return "one"
    end
  end

end
