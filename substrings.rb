@output_hash = {}

# adds a word to the output hash
def update_output_hash(word, output_hash)
  output_hash.key?(word) ? output_hash[word] += 1 : output_hash[word] = 1
  output_hash
end

# checks for occurrence of a word in the input text
def compare_strings(input_text, dictionary_word, output_hash)
  for i in 0..input_text.length - 1 do
    if input_text.length - i >= dictionary_word.length
      j = i + dictionary_word.length - 1
      temp_array = input_text.slice(i..j)
      if temp_array.eql?(dictionary_word)
        @output_hash = update_output_hash(temp_array, output_hash)
      end
    end
  end
end

# calls compare_strings on each word in the dictionary and the input text
def substrings(input_text, dictionary)
  input_text.downcase!
  dictionary.each do |word|
    compare_strings(input_text, word, @output_hash)
  end
  return @output_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)