require './test/test_helper'
require './lib/alphabet'
require './lib/braille'
require './lib/braille_alphabet'

class BrailleAlphabetTest < Minitest::Test
 def test_it_exists
   braille_alphabet = BrailleAlphabet.new

   assert_instance_of BrailleAlphabet, braille_alphabet
 end

 def test_it_knows_braille_alphabet
  braille_alphabet = BrailleAlphabet.new

   expected = {
                "0....." => "a",
                "0.0..." => "b",
                "00...." => "c",
                "00.0.." => "d",
                "0..0.." => "e",
                "000..." => "f",
                "0000.." => "g",
                "0.00.." => "h",
                ".00..." => "i",
                ".000.." => "j",
                "0...0." => "k",
                "0.0.0." => "l",
                "00..0." => "m",
                "00.00." => "n",
                "0..00." => "o",
                "000.0." => "p",
                "00000." => "q",
                "0.000." => "r",
                ".00.0." => "s",
                ".0000." => "t",
                "0...00" => "u",
                "0.0.00" => "v",
                ".000.0" => "w",
                "00..00" => "x",
                "00.000" => "y",
                "0..000" => "z",
                "......" => " ",
                "..000." => "!",
                "....0." => "'",
                "..0..." => ",",
                "....00" => "-",
                "..00.0" => ".",
                "..0.00" => "?",
                ".0.000" => "#"
               }

   assert_equal expected, braille_alphabet.braille_letters
 end
end
