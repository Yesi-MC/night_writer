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
    braille_conversion(braille_in_order)
  end

  def braille_conversion(braille)
    letter_breakdown = braille.join.scan(/(..)(..)(..)/)
    sentence = []
    letter_breakdown.each do |letter|
      sentence << get_english(letter.join)
    end
    sentence.join
  end

  def give_english(braille)
    transposed_lines = braille.each_slice(3).to_a.transpose
    connected_lines = []
    transposed_lines.each do |letter|
      connected_lines << letter.join.delete(" ") << "\n"
    end
    return_english(connected_lines.join)
  end

  def braille_to_english(braille)
    disconnected_lines = []
    lines = []
    disconnected_lines << braille
    split_line = braille.split("\n")
    split_line.each_with_index do |line, index|
      lines << line
    end
    give_english(lines)
  end
end
