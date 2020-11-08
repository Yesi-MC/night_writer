handle_name = File.open(ARGV[0], "r")

incoming_text = handle_name.read

handle_name.close

capital_text = incoming_text.upcase

writer_file = File.open(ARGV[1], "w")

writer_file.write(capital_text)
writer_file.close


# runner class
