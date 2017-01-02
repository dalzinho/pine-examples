#Things to try p. 56
#still to-do
#===========
#reject non-alpha characters

def quicksort(array)

  # method nicked off of Pine, p. 144
  # could this be an Array method?

  return array if array.length <= 1
  middle = array.pop
  less = array.select { |x| x.downcase < middle.downcase }
  more = array.select { |x| x.downcase >= middle.downcase }

  quicksort(less) + [middle] + quicksort(more)
end


word_list = []

print "Please enter a word to add to the array: "
new_word = gets.chomp

while new_word != ''
  word_list << new_word
  print "Add another word, or press <return> to exit: "
  new_word = gets.chomp
end

print quicksort(word_list)