class Braile

  def initialize
    @alphabet = Alphabet.new
  end

  def get_braile(letter)
    @alphabet.letters[letter]
    # require "pry"; binding.pry
  end
end
