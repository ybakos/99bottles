class Bottles 
  def verse(verse)
    first_bottle_number = verse == 0 ? "No more" : verse
    second_bottle_number = verse > 0 ? verse - 1 : 99
    second_sentence_start_phrase = verse == 0 ? "Go to the store and buy some more" : "Take one down and pass it around"
    first_bottle = (verse > 1 or verse == 0) ? "bottles" : "bottle"
    second_bottle = second_bottle_number > 1 ? "bottles" : "bottle"

    <<-VERSE
#{first_bottle_number} bottles of beer on the wall, #{first_bottle_number.to_s.downcase} #{first_bottle} of beer.
#{second_sentence_start_phrase}, #{second_bottle_number} #{second_bottle} of beer on the wall.
VERSE
  end

  def verses(start_verse, end_verse)
    final_verse = ""

    start_verse.downto(end_verse).each { |verse| final_verse << (self.verse(verse) << "\n") }

    final_verse
  end
end