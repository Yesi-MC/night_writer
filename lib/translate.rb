require './lib/braille'

class Translate

  def initialize
    @braille = Braille.new
  end

  def translate_to_braille(message)
    @braille.format_words(message)
  end
end
