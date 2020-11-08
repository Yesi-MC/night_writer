require 'minitest/autorun'
require 'minitest/pride'
require './lib/braile'


class BraileTest < Minitest::Test
 def test_it_exists
   braile = Braile.new

   assert_instance_of Braile, braile 
 end
end
