# Making my own game to play with logic and methods

def split_words(string) # Turns a string into an array.
  words = string.split(" ")
  words
end

def print_string(string, rpt) # Prints a string rpt times.
  rpt.times { puts string }
end

puts "Please enter a string to mess with." # Input string for above functions.
string = gets.chomp

puts "Now enter a number of times to print the string." # Input number for printing.
rpt = ""
loop do # Creates a conditional loop that only proceeds when it gets an Integer.
  puts "Enter an integer."
  rpt = gets.chomp.to_i
  if rpt >= 1
    break
  end
end

print_string(string, rpt) # Prints the string rpt times.

words = split_words(string) # Takes the array and puts it back together as a string.

word = "" # Requires that the word entered was actually in the string.
  loop do
  puts "Now enter one word from the previous string."
  word = gets.chomp
  if
    words.include?(word)
    break
  end
end

word_times = "" # Creates a conditional loop that requires repeat or remove.
loop do
  puts "Do you want to repeat or remove it?"
  word_times = gets.chomp
  if word_times == "repeat" || word_times == "remove"
    break
  end
end

if word_times == "repeat"
  words.insert(-1, word) # Inserts the word chosen back into the array.
elsif word_times == "remove"
  words.delete(word) # Removes the chosen word from the array.
end

print "Your final string is \"#{words.join(" ")}\"" # Prints the final version of the array as a string.
