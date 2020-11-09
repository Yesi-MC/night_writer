require './test/test_helper'
require './lib/braille'
require './lib/alphabet'
require './lib/translate'


class TranslateTest < Minitest::Test
  def test_it_exists
    translate = Translate.new

    assert_instance_of Translate, translate
  end

  def test_it_can_translate_to_braille
    translate = Translate.new
    message = "bob ross"

    expected = "0.0.0...0.0..0.0\n0..00...00.00.0.\n..0.....0.0.0.0.\n"

    assert_equal expected, translate.translate_to_braille(message)
  end
end
