class Bottles

  attr_accessor :bottle

  def initialize
    @bottle = "bottles"
  end

  def plural_check(bottle_count)
    if bottle_count == 1
      @bottle = "bottle"
    else 
     @bottle =  "bottles"
   end
  end

  def bottles_left(bottle_count)
    if bottle_count <= 1
      "no more"
    else
      bottle_count - 1
    end
  end

  def out_of_beer
    _ = "No more bottles of beer on the wall, no more bottles of beer.\n" << "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def verse(bottle_count)
    if bottle_count <= 0
      out_of_beer
    else
      plural_check(bottle_count )
      single_verse = "#{bottle_count} #{@bottle} of beer on the wall, #{bottle_count} #{@bottle} of beer.\n"
      
      plural_check(bottle_count - 1)
      single_verse<< "Take" <<  (bottle_count == 1 ? " it" : " one") << " down and pass it around, #{bottles_left(bottle_count)} #{@bottle} of beer on the wall.\n"
    end
  end

  def verses(verse_one_bc, verse_two_bc)
    verse_indeces = (verse_two_bc..verse_one_bc)
    passage = ""
    verse_indeces.reverse_each { |verse_index|

      passage << verse(verse_index)
      passage << "\n"
      
    }
    passage.chomp
  end

  def song
    whole_song = verses(99, 0)
  end

end