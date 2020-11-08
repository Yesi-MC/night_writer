require './test/test_helper'
require './lib/braille'
require './lib/alphabet'


class BrailleTest < Minitest::Test
 def test_it_exists
   braille = Braille.new

   assert_instance_of Braille, braille
 end

 def test_it_can_return_a_letter_of_alphabet
    braille = Braille.new
    alphabet = Alphabet.new

    expected = "0....."

    assert_equal expected, braille.get_braille("a")
 end

 def test_it_can_format_letter
    braille = Braille.new
    alphabet = Alphabet.new

    expected = "0.\n ..\n .."

    assert_equal expected, braille.format_letter("a")
 end
end