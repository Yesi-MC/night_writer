class Braille

  def initialize
    @alphabet = Alphabet.new
  end

  def get_braille(letter)
    @alphabet.letters[letter]
    # require "pry"; binding.pry
  end
end
