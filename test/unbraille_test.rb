require './test/test_helper'
require './lib/braille'
require './lib/alphabet'
require './lib/braille_alphabet'
require './lib/unbraille'


class UnbrailleTest < Minitest::Test
  def test_it_exists
    unbraille = Unbraille.new

    assert_instance_of Unbraille, unbraille
  end

  def test_it_can_return_a_letter_of_braille
     unbraille = Unbraille.new
     braille_alphabet = BrailleAlphabet.new

     expected = "b"

     assert_equal expected, unbraille.get_english("0.\n0.\n..\n")
     assert_equal expected, unbraille.get_english("0.0...")
  end

  # def test_it_can_return_a_formatted_letter
  #    unbraille = Unbraille.new
  #    braille_alphabet = BrailleAlphabet.new
  #
  #    expected = "b"
  #
  #    assert_equal expected, unbraille.return_letter("0.\n0.\n..\n")
  # end

end
