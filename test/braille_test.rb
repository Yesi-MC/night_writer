require 'minitest/autorun'
require 'minitest/pride'
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

    assert_equal expected, braile.get_braille("a")
 end
end
