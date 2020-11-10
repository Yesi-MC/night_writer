require './lib/braille'
require './lib/unbraille'


class Translate

  def initialize
    @braille = Braille.new
    @unbraille = Unbraille.new
  end

  def translate_to_braille(message)
    @braille.format_messages(message)
  end

  def translate_to_english(message)
    @unbraille.return_english(message)
  end
end
