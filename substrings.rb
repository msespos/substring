@output_hash = {}

# adds a word to the output hash
def update_output_hash(word, output_hash)
  output_hash.key?(word) ? output_hash[word] += 1 : output_hash[word] = 1
  output_hash
end

# checks for occurrence of a dictionary word in the input text
# calls update_output_hash if it finds a word
def compare_strings(input_text, dictionary_word)
  for i in 0..input_text.length - 1 do
    if input_text.length - i >= dictionary_word.length
      j = i + dictionary_word.length - 1
      arr = input_text.slice(i..j)
      if arr.eql?(dictionary_word)
        @output_hash = update_output_hash(arr, @output_hash)
      end
    end
  end
end

# calls compare_strings on each word in the dictionary and the input text
def substrings(input_text, dictionary)
  input_text.downcase!
  dictionary.each do |word|
    compare_strings(input_text, word)
  end
  return @output_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)