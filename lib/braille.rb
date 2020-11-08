class Braille

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
    words.chars.map do |letter|
      format_letter(letter)
      # require "pry"; binding.pry
    end
  end
end
