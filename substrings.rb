def compare_strings(input_text, dictionary_word) #both arguments are arrays
  for i in 0..input_text.length - 1 do
    if input_text.length - i >= dictionary_word.length
      j = i + dictionary_word.length - 1
      temp_array = input_text.slice(i..j)
      if temp_array.eql?(dictionary_word)
        puts "MATCH"
        puts temp_array
      end
    # if not equal do nothing
    end
  end
end

compare_strings(["H", "e", "l", "l", "o", "", "h"], ["o", "", "h"])