require 'minitest/autorun'
require 'minitest/pride'
require './lib/alphabet'
require './lib/braile'

class AlphabetTest < Minitest::Test
 def test_it_exists
   alphabet = Alphabet.new

   assert_instance_of Alphabet, alphabet
 end
end
