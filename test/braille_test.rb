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

    expected = "0....."

    assert_equal expected, braille.get_braille("a")
 end

 def test_it_can_format_letter
    braille = Braille.new

    expected = "0.\n..\n.."

    assert_equal expected, braille.format_letter("a")
 end

 def test_it_can_format_words
   braille = Braille.new

   expected =
    "0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...\n"

   assert_equal expected, braille.format_words("hello world")
 end

 def test_it_knows_special_characters
   braille = Braille.new

   expected =
   ".00.0.0.0.0....00.0.0.00..\n.000.00.0..0..00.0000..000\n00....0.0.0....00.0.0...0.\n"

   assert_equal expected, braille.format_words("#hello world!")
 end

 def test_it_cant_be_longer_than_40_characters
   braille = Braille.new

   expected = ".00...000.00...0..000.0.0...00.0.0.00.0.0..0.....00..0.0..0.0.000000..0..0.0.0\n00.0...0.0.0..00.........0....0.0.00.....00.0...00..0.00..00..0.0..0..0.0.0000\n.0......0.0.0.0...0...0.....0...0.0...0...0.......000.0.......0.0.00..0...0.0.\n0.0...0.0000.0000.00.0.0..\n0..0........0..0.0.0000.00\n0.................0.0.0.0.\n"

   actual = "we don't make mistakes, just happy little accidents!"

   assert_equal expected, braille.format_messages(actual)
 end


end
