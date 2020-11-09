require './lib/alphabet'

class Braille
  attr_reader :alphabet
  def initialize
    @alphabet = Alphabet.new
  end

  def get_braille(letter)
    @alphabet.letters[letter]
  end

  def format_letter(letter)
    row1 = ""
    row2 = ""
    row3 = ""
    row1 << get_braille(letter).chars[0..1].join
    row2 << get_braille(letter).chars[2..3].join
    row3 << get_braille(letter).chars[4..5].join
    "#{row1}\n" + "#{row2}\n" + "#{row3}"
  end

  def format_words(words)
    row1 = []
    row2 = []
    row3 = []
    words.chars.each do |letter|
      row1 << get_braille(letter)[0..1]
      row2 << get_braille(letter)[2..3]
      row3 << get_braille(letter)[4..5]
    end
    "#{row1.join}" << "\n" << "#{row2.join}" << "\n" << "#{row3.join}" << "\n"
  end

  def format_messages(message)
    empty = []
    if message.length >= 40
      message.chars.each_slice(39) do |section|
        empty << format_words(section.join)
      end
    else
      empty << format_words(message)
    end
    empty.join
  end
end
