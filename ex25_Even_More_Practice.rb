module Ex25
  def self.break_words(stuff)
    # This function will break up words for us.
    words = stuff.split(' ')
    words
  end

  def self.sort_words(words)
    # Sort the words.
    words.sort
  end

  def self.print_first_word(words)
    # Prints the first word and shifts the others down by one.
    word = words.shift
    puts word
  end

  def self.print_last_word(words)
    # Prints the last word after popping it off the end.
    word = words.pop 
    puts word
  end

  def self.sort_sentence(sentence)
    # Takes in the full sentence and returns the sorted words.
    words = break_words(sentence)
    sort_words(words)
  end

  def self.print_first_and_last(sentence)
    # Prints the first and last words of the sentence.
    words = break_words(sentence)
    print_first_word(words)
    print_last_word(words)
  end

  def self.print_first_and_last_sorted(sentence)
    # Sorts the words then prints the first and last one.
    words = sort_sentence(sentence)
    print_first_word(words)
    print_last_word(words)
  end
end

# Extra Credit
# 1. Do you understand this module
# module Ex25: this is the namespace of the module

# break_words(stuffs)
# this method takes in a string that being passed into and break out the components at the next space split(' ')

# sort_words(words)
# this method will sort the array of broken out words and put them in alphabetical order

# print_first_word
# prints the first word of the broken out array

# print_last_word
# prints the last word of the broken out array

# sort_sentence
# this method will call the break_words method on the string that being passed into and then assigns the result array into a 'words' variable
# afterward, it wil call the method 'sort_word' on the 'words' variable

# print_first_and_last
# call break_words method to break out the passed in sentence
# print the last and first word of the result array

# print_first_and_last
# call the sort_sentence method to break out and sort the sentence in alphabetical order (check sort_sentence to see its steps)
# print the first and last word of the result array (which has already been sorted in alphabetical order)