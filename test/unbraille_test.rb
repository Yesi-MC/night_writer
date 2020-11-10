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

  def test_it_knows_count_of_letters
    unbraille = Unbraille.new
    braille_alphabet = BrailleAlphabet.new

    expected = 3
    actual = "000..0\n....00\n....0."

    assert_equal expected, unbraille.count_of_letters(actual)
  end

  def test_it_can_return_a_three_letter_word
     unbraille = Unbraille.new
     braille_alphabet = BrailleAlphabet.new

     expected = "cat"
     actual = "000..0\n....00\n....0."

     assert_equal expected, unbraille.return_english(actual)
  end

  def test_it_can_return_a_longer_letter_sentence
     unbraille = Unbraille.new
     braille_alphabet = BrailleAlphabet.new

     expected = "hello world"
     actual = "0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...\n"

     assert_equal expected, unbraille.return_english(actual)
  end

  def test_it_can_join_braille_and_return_phrase_longer_than_40_characters
     unbraille = Unbraille.new
     braille_alphabet = BrailleAlphabet.new

     expected = "we don't make mistakes just happy little accidents!"

     actual =
     ".00...000.00...0..000.0.0...00.0.0.00.0.0..0.....00..0.0..0.0.000000..0..0.0.0
      00.0...0.0.0..00.........0....0.0.00.....00.0...00..0.00..00..0.0..0..0.0.0000
      .0......0.0.0.0...0...0.....0...0.0...0...0.......000.0.......0.0.00..0...0.0.
      0.0...0.0000.0000.00.0.0..
      0..0........0..0.0.0000.00
      0.................0.0.0.0."

     assert_equal expected, unbraille.join_lines(actual)
  end


end
