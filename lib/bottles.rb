class Bottles

  def verse(verse_number)
    @verse_number = 99
    #@verse_number.downto(1) {
   "#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.\n" +
    "Take one down and pass it around, #{verse_number - 1} bottles of beer on the wall.\n"
  #}
  end

end