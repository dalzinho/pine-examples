def dictionary_sort(array)

  return array if array.length <= 1
  middle = array.pop
  less = array.select { |word| word.downcase < middle.downcase }
  more = array.select { |word| word.downcase >= middle.downcase }

  dictionary_sort(less) + [middle] + dictionary_sort(more)
end

words = ["Alpha", "aardvark", "Beta", 'beetle', "Gamma", "gammon", "Delta", "detail", "Epsilon", "episode" ]

print dictionary_sort(words)