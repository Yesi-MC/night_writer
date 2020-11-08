require 'minitest/autorun'
require 'minitest/pride'
require './lib/braile'
require './lib/alphabet'


class BraileTest < Minitest::Test
 def test_it_exists
   braile = Braile.new

   assert_instance_of Braile, braile
 end

 def test_it_can_return_a_letter_of_alphabet
    braile = Braile.new
    alphabet = Alphabet.new

    expected = "0....."

    assert_equal expected, braile.get_braile("a")
 end
end
