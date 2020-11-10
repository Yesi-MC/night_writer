require './lib/braille'
require './lib/alphabet'
require './lib/translate'
require './lib/braille_alphabet'
require './lib/unbraille'

message = File.open(ARGV[0], "r")

incoming_text = message.read

message.close

translate = Translate.new

english_text = translate.translate_to_english(incoming_text)

writer_file = File.open(ARGV[1], "w")

writer_file.write(english_text)
writer_file.close


puts "Created #{ARGV[1]} containing #{incoming_text.size} characters"
