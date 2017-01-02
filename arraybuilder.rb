#Things to try p. 56

print "Please enter a word to add to the array:"
new_word = gets.chomp
word_list = []

until new_word == ''
  word_list << new_word
end

print word_list.sort