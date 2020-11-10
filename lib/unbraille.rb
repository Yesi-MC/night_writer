require './lib/braille_alphabet'

class Unbraille
  attr_reader :braille_alphabet

  def initialize
    @braille_alphabet = BrailleAlphabet.new
  end

  def get_english(braille)
    remove_space = braille.delete "\n"
    @braille_alphabet.braille_letters[remove_space]
  end

  def count_of_letters(braille)
    braille.split[0].length / 2
  end

  def return_english(braille)
    braille_in_order = []
    split_line = braille.split("\n")
    count_of_letters(braille).times do
      split_line.each do |line|
        braille_in_order << line.slice!(0..1)
      end
    end
    array = braille_in_order.join.scan(/(..)(..)(..)/)
    sentence = []
    array.each do |char|
      sentence << get_english(char.join)
    end
    sentence.join
  end

  def braille_to_english(braille)
    array = []
    lines = []
    array << braille
    split_line = braille.split("\n")
    split_line.each_with_index do |line, index|
      lines << line
    end
    xyz = lines.each_slice(3).to_a.transpose
    tuv = []
    xyz.each do |letter|
      tuv << letter.join.delete(" ") << "\n"
    end
    return_english(tuv.join)
  end


end
