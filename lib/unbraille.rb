require './lib/braille_alphabet'

class Unbraille
  attr_reader :braille_alphabet

  def initialize
    @braille_alphabet = BrailleAlphabet.new
  end

  def get_english(braille)
    remove_space = braille.delete "\n"
    @braille_alphabet.braille_letters[remove_space]
  end

  # def return_letter(braille)
  #   get_english(braille)
  #   require "pry"; binding.pry
  # end
end
